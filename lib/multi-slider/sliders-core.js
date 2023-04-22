/*
	A JS component that manages multiple sliders, each having a value and a weight. Each value has an associated
	label.
	- Values are integers and unique. Two sliders may not have the same value.
	- Weights are integers going from 0-127
	- The default weight for a new value is 64
	- The UI always sorts the sliders by value independent of the order in which items were added
	- Messages (note: named messages can be sent on any inlet)
	    - reset - cleanup any old lingering UI elements
	    - hide 0|1 - show/ hide all UI elements
	    - clear - delete all values
	    - toggle <int> - toggle the value passed in (i.e. add if exists and remove if not)
	    - add <list> - add all the values supplied if they do not exist
	    - addval <int>, <int> - add a value with the associated weight
	    - del <list> - delete all the values supplied where they exist
	    - set <list> - clears all values and adds the the specified list
	    - setweight <int>,<int> - set weight for value
	    - int: inlet 1: same as toggle
	    - list: inlet 1: same as add
	    - list: inlet 2: same as del
	    - bang: inlet 1: emit current state on all outlets
	    - bang inlet 2: bang: same as reset
	    - outlet 1: list of values
	    - outlet 2: list of weights
	    - outlet 3: list of [value, weight] pairs always having an even number of elements
	    - outlet 4: emits a 1 on errors, 0 for message successfully processed
	- Attributes (all attributes available to be set as attr_<name> messages:
	    - bgcolor <dbl> <dbl> <dbl> <dbl> - set color of background panel
	    - textcolor <dbl> <dbl> <dbl> <dbl> - set text color for labels
	    - textbgcolor <dbl> <dbl> <dbl> <dbl> - set text background color for labels
	    - sliderbgcolor <dbl> <dbl> <dbl> <dbl> - set background color of slider
	    - slideroncolor <dbl> <dbl> <dbl> <dbl> - set on color of slider
	    - slideroffcolor <dbl> <dbl> <dbl> <dbl> - set off color of slider
	    - sliderthickness <int> - set the thickness of the slider (e.g. 90 to leave some background to bleed at sides)
	    - border <int> - border width
	    - bordercolor <dbl> <dbl> <dbl> <dbl> - border color
	    - sep <int> [<int>] - set min and max separation between sliders (in pixels)
	    - width <int> [<int>] - set min and max width for sliders (in pixels)
*/

include('attrs');

inlets = 3;
outlets = 5;
autowatch =1 ;

var sliders = []; 		// the slider at each index position. Object of type { value: val, text: obj, obj: obj }
var weightMemory = {}   // remember last used weights by value

var addInlet = 0,
    delInlet = 1,
    internalInlet = 2;

var valueOutlet = 0,
    weightsOutlet = 1,
    pairsOutlet = 2,
    hasContentOutlet = 3,
    errorOutlet = 4;

var rPatch = 'patching_rect',
    rPresent = 'presentation_rect';

var hidden = false,
    disabled = jsarguments.length > 1 && jsarguments[1] === 'disabled';

setinletassist(0,'bang outputs values, list adds all values');
setinletassist(1, 'bang clears all state, list removes all values');
setinletassist(2, 'internal inlet, do not use');
setoutletassist(valueOutlet, 'emits current values stored');
setoutletassist(weightsOutlet, 'emits current weights stored');
setoutletassist(pairsOutlet, 'emits current value-weights pairs stored');
setoutletassist(hasContentOutlet, 'emits a 1 when values present, 0 when no values');
setoutletassist(errorOutlet, 'emits a 1 on errors, 0 on success');

// default the label function if it doesn't exist
if (typeof getLabel != 'function') {
    getLabel = function (v) { return String(v); };
}
getLabel.local = 1;

if (typeof getSliderColor != 'function') {
    getSliderColor = function (v) { return undefined; }
}
getSliderColor.local = 1;

// slider settings
var margin = 10,
    panelMargin = 0;

// layout settings
var minWidth = 30,
    maxWidth = 35,
    minSep = 5,
    maxSep = 20;

attrs.make('slideroncolor', [ 0.808, 0.898, 0.910, 1.000 ], attrs.types.color, redraw);
attrs.make('sliderthickness', 100, attrs.types.int, redraw);
attrs.make('textbgcolor', [ 0, 0, 0, 1], attrs.types.color, redraw);
attrs.make('sliderbgcolor', [ 0.200, 0.200, 0.200, 1.000], attrs.types.color, redraw);
attrs.make('bgcolor', [0.580, 0.612, 0.776, 1.000], attrs.types.color, redraw);
attrs.make('textcolor', [ 1,1,1,1 ], attrs.types.color, redraw);
attrs.make('slideroffcolor', [ 0.349, 0.349, 0.349, 1.000], attrs.types.color, redraw);
attrs.make('border', 1, attrs.types.int, redraw);
attrs.make('bordercolor', [ 0.200, 0.200, 0.200, 1.000], attrs.types.color, redraw);

function asMinMax(vals) {
    if (vals.length === 0) {
        return doError('invalid minmax, no values:');
    }
    if (vals.length > 2) {
        return doError('invalid minmax, need 1 or 2 values:', vals);
    }
    const m0 = attrs.types.int(vals[0]);
    const m1 = attrs.types.int(vals.length === 1 ? vals[0] : vals[1]);
    if (m0 === null || m1 === null) {
        return doError("min/ max must be numeric, found", vals[0], (vals.length === 1 ? vals[0] : vals[1]));
    }
    const min = Math.min(m0,m1);
    const max = Math.max(m0,m1);
    return [min, max];
}

function sep() {
    const minMax = asMinMax(arrayfromargs(arguments));
    if (minMax === null) {
        return;
    }
    var m = Math.min(
        maxPossibleSliders(boundRect(rPatch), minWidth, minMax[0]),
        maxPossibleSliders(boundRect(rPresent), minWidth, minMax[0])
    );
    if (m < sliders.length) {
        return doError("changed sep violates current constraints, max sliders=",m,"current sliders=", sliders.length);
    }
    minSep = minMax[0];
    maxSep = minMax[1];
    redraw();
    return minMax;
}

function width() {
    const minMax = asMinMax(arrayfromargs(arguments));
    if (minMax === null) {
        return;
    }
    var m = Math.min(
        maxPossibleSliders(boundRect(rPatch), minMax[0], minSep),
        maxPossibleSliders(boundRect(rPresent), minMax[0], minSep)
    );
    if (m < sliders.length) {
        return doError("changed width violates current constraints, max sliders=",m,"current sliders=", sliders.length);
    }
    minWidth = minMax[0];
    maxWidth = minMax[1];
    redraw();
    return minMax;
}

// data types: begin
function asWeight(v) {
    const weight = attrs.types.int(v);
    if (weight === null) {
        return doError('sliders: weight needs a number for weight, found', v);
    }
    if (weight <0 || weight >127) {
        return doError('sliders:  bad weight want [0,127], found', weight);
    }
    return weight;
}
asWeight.local = 1;

function asValue(v) {
    const val = attrs.types.int(v);
    if (val === null) {
        return doError('sliders: bad value, found', v, typeof(v));
    }
    return val;
}
asValue.local = 1;

// data types: end

function isInlet(want) {
    return want === inlet;
}
isInlet.local = 1;

function doError() {
    for (var i=0; i <arguments.length; i +=1) {
        error(arguments[i]);
    }
    post();
    outlet(errorOutlet,1);
    return null;
}
doError.local = 1;

// boundRect returns the effective bounding rectangle of the panel.
function boundRect(kind) {
    if (!kind) {
        kind = rPresent
    }
    var bounds = this.box.getattr(kind);
    return { left: bounds[0] + margin, top: bounds[1] + margin, width: bounds[2] - 2 * margin, height: bounds[3] - 2 * margin };
}
boundRect.local = 1;

function getRect(obj, kind) {
    var bounds = obj.getattr(kind);
    if (!bounds) {
        return null;
    }
    return { left: bounds[0], top: bounds[1], width: bounds[2], height: bounds[3] };
}
getRect.local = 1;


// indexOf returns the index of the slider that has the supplied value and -1 if not found.
function indexOf(n) {
    for (var i = 0; i < sliders.length; i += 1) {
        if (n === sliders[i].value) {
            return i;
        }
    }
    return -1;
}
indexOf.local = 1;

// maxPossibleSliders returns the maximum number of sliders that can be created given a rect into which they need to fit.
function maxPossibleSliders(rect, w, s) {
    if (w === undefined) {
        w = minWidth;
    }
    if (s === undefined) {
        s = minSep;
    }
    const minWidthPerSlider = w + s;
    return Math.floor(rect.width / minWidthPerSlider);
}
maxPossibleSliders.local = 1;

// computes the layout
function layout(kind) {
    const rect = boundRect(kind);
    const availableWidth = rect.width;
    const numObjects = sliders.length;

    // start with max width and sep
    var objectWidth = maxWidth;
    var sep;

    var requiredWidth = function (width, sep) {
        return (width + sep) * numObjects;
    };
    for (sep = maxSep; sep >= minSep; sep -=1) {
        if (requiredWidth(objectWidth, sep) <= availableWidth) {
            break;
        }
    }
    for (objectWidth = maxWidth; objectWidth >= minWidth; objectWidth -= 1) {
        if (requiredWidth(objectWidth, sep) <= availableWidth) {
            break;
        }
    }
    const width = requiredWidth(objectWidth, sep);
    const start = rect.left + (width <= availableWidth ? Math.floor((availableWidth - width)/2) : 0);
    const top = rect.top;

    const commentHeight = Math.floor(rect.height * 0.2);
    const sliderHeight = rect.height - commentHeight;

    for (var i=0; i<sliders.length; i+=1) {
        const left = start + i * (objectWidth + sep);
        const slider = sliders[i];
        slider.text.message(kind,left, top, objectWidth, commentHeight);
        slider.obj.message(kind,left, top + commentHeight,objectWidth, sliderHeight);
    }
}
layout.local = 1;

function redraw() {
    const values = sliders.map(function (s) { return s.value; });
    reset(true);
    add.apply(null, values);
}
redraw.local = 1;

function sendOutputs() {
    const values = [];
    const weights = [];
    const tuples = [];

    for (var i=0; i<sliders.length; i+=1) {
        const s = sliders[i];
        values.push(s.value);
        tuples.push(s.value);
        weights.push(s.weight);
        tuples.push(s.weight);
    }
    outlet(valueOutlet,values);
    outlet(weightsOutlet,weights);
    outlet(pairsOutlet, tuples);
    outlet(hasContentOutlet, values.length > 0 ? 1 : 0);
}
sendOutputs.local = 1;

function addSingle(val, weight) {
    val = asValue(val);
    if (val === null) {
        return false;
    }
    const index = indexOf(val);
    if (index >= 0) {
        return false;
    }
    var m = Math.min(maxPossibleSliders(boundRect(rPatch)), maxPossibleSliders(boundRect(rPresent)));
    if (sliders.length >= m) {
        outlet(errorOutlet,1);
        return false;
    }
    const label = getLabel(val);
    if (weight === undefined) {
        weight = weightMemory[val];
    }
    if (weight === undefined) {
        weight = 64;
    }
    weightMemory[val] = weight;

    const rect = boundRect(rPresent);
    const patchRect = boundRect(rPatch)
    const obj = this.patcher.newdefault(0,0, 'slider');
    obj.set(weight);
    obj.presentation(1);
    obj.setminmax(0, 127);
    obj.floatoutput(0);
    obj.knobshape(4);
    obj.bgcolor.apply(obj,sliderbgcolor);
    obj.elementcolor.apply(obj, slideroffcolor);
    obj.thickness(this.sliderthickness);
    obj.setattr('hidden',hidden);
    var sliderColor = getSliderColor(val);
    if (sliderColor === undefined) {
        sliderColor = slideroncolor;
    }
    obj.knobcolor.apply(obj, sliderColor);
    this.patcher.bringtofront(obj);

    const text = this.patcher.newdefault(0,0, 'live.comment');
    text.set(label);
    text.bgcolor.apply(text, textbgcolor);
    text.textcolor.apply(text, textcolor);
    text.presentation(1);
    text.textjustification(1);
    text.setattr('hidden',hidden);
    this.patcher.bringtofront(text);

    const msg = this.patcher.newobject('message',rect.left, rect.top,100,10,'setweight',val,'$1');
    msg.presentation(1);
    msg.setattr(rPresent, rect.left, rect.top,30,10);
    msg.setattr(rPatch, patchRect.left, patchRect.top,30,10);
    msg.setattr('hidden',1);
    this.patcher.hiddenconnect(obj,0, msg,0);
    this.patcher.hiddenconnect(msg,0, this.box, internalInlet);
    this.patcher.bringtofront(msg);

    const slider = {
        value: val,
        text: text,
        obj: obj,
        weight: weight,
    };
    sliders.push(slider);
    sliders.sort(function (a,b) { return a.value < b.value ? -1 : 1});
    return true;
}
addSingle.local = 1;

function delSingle(index) {
    if (index < 0 || index >= sliders.length) {
        return false;
    }
    const current = sliders[index];
    this.patcher.remove(current.text);
    this.patcher.remove(current.obj);
    if (current.msg) {
        this.patcher.remove(current.msg);
    }
    sliders = sliders.filter(function (v,i) { return i !== index; });
    return true;
}
delSingle.local = 1;

function toggleSingle(val) {
    const index = indexOf(val);
    if (index === -1) {
        return addSingle(val);
    } else {
        return delSingle(index);
    }
}
toggleSingle.local = 1;

// does all the things needed after sliders have changed.
function onChange() {
    layout('presentation_rect');
    layout('patching_rect');
    sendOutputs();
    outlet(errorOutlet, 0);
}
onChange.local = 1;

function findUIElements() {
    const ret = [];
    const rect = getRect(this.box, rPatch);
    const patcher = this.patcher;
    patcher.apply(function (obj) {
        if (!(obj.maxclass === 'slider' || obj.maxclass === 'comment' || obj.maxclass === 'message' || obj.maxclass === 'panel')) {
            return
        }
        const obRect = getRect(obj,rPatch);
        if (obRect.left >= rect.left && obRect.left  < rect.left + rect.width &&
            obRect.top >= rect.top && obRect.top < rect.top + rect.height) {
            ret.push(obj);
        }
    });
    return ret;
}
findUIElements.local = 1;

/* External interface to the module */

function hide() {
    if (arguments.length !== 1) {
        return doError('expected exactly one arg, found',arguments.length);
    }
    const val = attrs.types.int(arguments[0]);
    if (val === null) {
        return doError('invalid hide value', arguments[0],'want 0/1');
    }
    if (!(val === 0 || val === 1)) {
        return doError('invalid hide value', arguments[0],'want 0/1');
    }
    hidden = val === 1;
    const elements = findUIElements();
    for (var i=0; i <elements.length; i += 1) {
        if (elements[i].maxclass === 'message') {
            continue;
        }
        elements[i].message('hidden', val);
    }
    this.box.message('hidden',val);
}

// clears all sliders and resets internal state
function reset(internal) {
    const rect = getRect(this.box, rPatch);
    const presentRect = getRect(this.box, rPresent);
    const elements = findUIElements();
    for (var i=0; i<elements.length; i += 1) {
        this.patcher.remove(elements[i]);
    }
    if (disabled) {
        return;
    }
    const panel = this.patcher.newdefault(0,0,'panel');
    panel.presentation(1);
    panel.bgcolor(bgcolor);
    panel.rounded(0);
    panel.border(border);
    panel.bordercolor(bordercolor);
    panel.message(rPatch,rect.left + panelMargin, rect.top + panelMargin, rect.width - 2* panelMargin, rect.height - 2*panelMargin);
    panel.message(rPresent,presentRect.left + panelMargin, presentRect.top + panelMargin, presentRect.width - 2* panelMargin, presentRect.height - 2* panelMargin);
    this.patcher.bringtofront(panel);
    if (hidden) {
        panel.message('hidden', 1);
    }
    sliders = [];
    if (!internal) {
        sendOutputs();
    }
}

// adds one or more values if not present.
function add() {
    var anySuccess = false;
    for (var i=0; i<arguments.length; i+=1) {
        const f = addSingle(arguments[i]);
        anySuccess = anySuccess || f;
    }
    if (anySuccess) {
        onChange();
        return true;
    }
    return false;
}

// removes one or more values if not present.
function del() {
    var anySuccess = false;
    for (var i=0; i<arguments.length; i+=1) {
        const val = asValue(arguments[i]);
        if (val === null) {
            continue;
        }
        const index = indexOf(val);
        if (index >= 0) {
            const f = delSingle(index);
            anySuccess = anySuccess || f;
        }
    }
    if (anySuccess) {
        onChange();
        return true;
    }
    return false;
}

// clears all sliders.
function clear() {
    const values = sliders.map(function (s) { return s.value; })
    return del.apply(this, values);
}

// sets the exact list of values provided.
function set() {
    var anySuccess = false;
    const f1 = clear();
    anySuccess = anySuccess || f1;
    const f2 = add.apply(this, arrayfromargs(arguments));
    anySuccess = anySuccess || f2;
    if (anySuccess) {
        onChange();
        return true;
    }
    return false;
}

// sets the weight for a slider with a specific value, requiring two values [v,w] on the second inlet.
function setweight() {
    if (arguments.length !== 2) {
        return doError('sliders: setWeight needs exactly two argument');
    }
    const val = attrs.types.int(arguments[0]);
    if (val === null) {
        return doError('sliders: setWeight needs a number for value, found', arguments[0]);
    }
    var weight = attrs.types.int(arguments[1]);
    if (weight === null) {
        return doError('sliders: setWeight needs a number for weight, found', arguments[1]);
    }
    if (weight <0) {
        weight = 0;
    }
    if (weight > 127) {
        weight = 127;
    }
    const index = indexOf(val);
    if (index < 0) {
        outlet(errorOutlet, 1);
        return;
    }
    if (sliders[index].weight === weight) {
        return null;
    }
    sliders[index].weight = weight;
    weightMemory[sliders[index].value] = weight;
    sliders[index].obj.set(weight);
    sendOutputs();
}

// loads multiple sliders given a list of interleaved value, weight pairs. The format is the same as the
// the interleaved output generated by the third outlet.
function load() {
    if (arguments.length % 2 !== 0) {
        return doError("load requires even args");
    }
    for (var i=0; i<arguments.length; i+=2) {
        add(arguments[i]);
        setweight(arguments[i],arguments[i+1]);
    }
}

// toggles a single value
function toggle() {
    if (toggleSingle(arguments[0])) {
        onChange();
    }
}

var minInterpolationPoints = 4,
    minWeight = 10,
    maxWeight = 118;

function weight_template(v) {
    const values = [];
    const weights = [];
    var i;
    // push initial values
    for (i=0; i<sliders.length; i+=1) {
        const s = sliders[i];
        values.push(s.value);
        weights.push(s.weight);
    }
    const points = values.length < minInterpolationPoints ? minInterpolationPoints : values.length;
    const startPoint = Math.floor(values.length < minInterpolationPoints ? (minInterpolationPoints - values.length) / 2 : 0);
    // jigger weights
    if (v === 'flat') {
        for (i=0; i<weights.length; i+=1) {
            weights[i] = 64;
        }
    } else if (v === 'line_up' || v === 'line_down') {
      const delta = (maxWeight - minWeight) / points;
        for (i=0; i<weights.length; i+=1) {
            const w = minWeight + (startPoint + i) * delta;
            weights[i] = (v === 'line_up' ? w : 127-w);
        }
    } else if (v === 'exp_up' || v === 'exp_down') {
        const lnMax = Math.log(maxWeight);
        const lnMin = Math.log(minWeight);
        const f = Math.exp((lnMax -lnMin) / points);
        var multiplier = 1;
        for (i=0; i< startPoint; i+=1) {
            multiplier = multiplier * f;
        }
        for (i=0; i<weights.length; i+=1) {
            multiplier = multiplier * f;
            const w1 = Math.floor(minWeight * multiplier);
            const index = v === 'exp_up' ? i : weights.length - i -1;
            weights[index] = w1;
        }
    } else if (v === 'random') {
        for (i=0; i<weights.length; i+=1) {
            weights[i] = minWeight + Math.floor(Math.random() * (maxWeight - minWeight + 1));
        }
    }
    // re-apply jiggered weights
    for (i=0; i<values.length; i+=1) {
        setweight(values[i], weights[i]);
    }
}

// add or delete a list of values
function list(a) {
    const args = arrayfromargs(arguments);
    if (isInlet(addInlet)) {
        add.apply(this, args);
    }
    if (isInlet(delInlet)) {
        del.apply(this, args);
    }
}

// bang on inlet 1 emits current values, on inlet 2 causes an internal reset deleting all values in the process.
function bang() {
    if (isInlet(addInlet)) {
        sendOutputs();
        return;
    }
    if (isInlet(delInlet)) {
        reset();
    }
}


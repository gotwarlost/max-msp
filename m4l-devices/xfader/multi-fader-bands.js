inlets = 2;
outlets = 4;

var constants = {
    dialPrefix: 'd',
    numDials: 10,
    patcherPrefix: 'patcher',
    inPrefix: 'plugin',
    outPrefix: 'plugout',
    patcherFile: 'xfader-poly-gain.maxpat',
    tmpPrefix: 'tmp',
};

var hasErrors = true,
    bands = -1,
    baseFreq = 100,
    maxFreq = 20000;

var refs = {
    dials: [],
};

var ampMemory = {};

function initialize() {
    hasErrors = true;
    const patcher = this.patcher;
    refs.dials = [];
    for (var i = 0; i < constants.numDials; i += 1) {
        var dial = patcher.getnamed(constants.dialPrefix + i, '\n');
        if (!dial) {
            error('No dial found at index', i);
            return;
        }
        refs.dials.push(dial);
    }
    hasErrors = false;
}

initialize.local = 1;

function lowFreq(i) {
    if (i === 0) {
        return 0;
    }
    return baseFreq * Math.pow(2, i-1)
}
lowFreq.local = 1;

function highFreq(i) {
    return baseFreq * Math.pow(2, i)
}
highFreq.local = 1;

function displayFreq(f) {
    if (f < 1000) {
        return '' + Math.round(f);
    }
    return '' + Math.round(f / 100) / 10 + 'k';
}

displayFreq.local = 1;

function sendAmplitude(index, value) {
    outlet(2, index+1, 127 - value);
    outlet(3, index+1, value);
}

sendAmplitude.local = 1;

var counter = 0;

function rewire() {
    initialize();
    if (hasErrors) {
        return;
    }
    var i;
    for (i = 0; i < constants.numDials; i += 1) {
        const hidden = i >= bands ? 1 : 0;
        const dial = refs.dials[i];
        const have = dial.getattr('hidden');
        if (hidden !== have) {
           refs.dials[i].setattr('hidden', hidden);
        }
        if (!hidden) {
            const name = '' + displayFreq(highFreq(i));
            dial.message('_parameter_shortname',name);
        }
    }

    outlet(0, bands);
    for (i=0; i<bands; i+=1) {
        outlet(1, i+1, lowFreq(i), highFreq(i))
        sendAmplitude(i, ampMemory[i] || 0);
    }

}

rewire.local = 1;

function dials() {
    var v = arguments[0];
    if (v < 1) {
        v = 1;
    }
    if (v > constants.numDials) {
        v = constants.numDials;
    }
    bands = v;
    baseFreq = maxFreq / Math.pow(2, v - 1)
    rewire();
}


function amp(index, value) {
    if (index < 0 || index >= constants.numDials) {
        return;
    }
    if (value < 0) {
        value = 0;
    }
    if (value > 127) {
        value = 127;
    }
    ampMemory[index] = value;
    if (index < 0 || index >= bands) {
        return;
    }
    sendAmplitude(index, value);
}


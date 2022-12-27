/**
 * Solo safe module that enables solo for the current track when the following conditions are met:
 *  - the device is enabled
 *  - the current track is not frozen
 *  - at least one other track in the live set has solo enabled
 *
 *  inspired from ideas in the original solo safe plugin. (https://maxforlive.com/library/device/3447/solo-safe)
 *  Code is written from scratch.
 *
 *  Two inlets and one outlet.
 *  - Left inlet accepts an integer message to enable/ disable. It also accepts an 'init' message to initialize the module.
 *  - Right inlet accepts the solo value that should be set on the current track
 *  - Outlet emits the solo value to be sent to the right inlet with a deferlow in between.
 *
 *  @author Krishnan Anantheswaran (https://github.com/gotwarlost)
 *  @date Dec 26, 2022
 *  @version 0.1
 */
autowatch = 1;
inlets = 2;
outlets = 1;

var enabled = 1;
var liveState = {
    selfTracker: null,
    tracksTracker: null,
    solosTracker: {},
    patcher: null,
};

var debugMode = false;

function debug() {
    if (!debugMode) {
        return
    }
    for (var i =0; i<arguments.length; i++) {
        post(arguments[i]);
    }
    post('\n');
}

var propIsFrozen = 'is_frozen';

// SelfTracker observes the current track for 'is_frozen' changes and allows setting solo mode on it.
function SelfTracker() {
    this.api = new LiveAPI(this.observe.bind(this),'this_device canonical_parent');
    this.id = this.api.id;
    debug('own track id:', this.id);
    this.frozen = 0;
    this.api.property = propIsFrozen;
}
SelfTracker.local = 1;

SelfTracker.prototype.observe = function (args) {
    if (args[0] !== propIsFrozen) {
        return;
    }
    this.frozen = args[1] === 1;
    setFrozenUI(this.frozen);
    debug('freeze change for:',this.id, this.frozen);
    onStateChange();
}

SelfTracker.prototype.setSolo = function (val) {
    this.api.set('solo',val);
}

var propSolo = 'solo';

// observe the track with the supplied id for 'solo' changes.
function SoloTracker(id) {
    debug('create solo tracker for:',id);
    this.id = id;
    this.solo = 0;
    this.api = new LiveAPI(this.observe.bind(this), 'id ' + id);
    this.api.property = propSolo;
}
SoloTracker.local = 1;

SoloTracker.prototype.observe = function(args) {
    if (args[0] !== propSolo) {
        return
    }
    this.solo = args[1] === 1;
    debug('solo change for:',this.id, this.solo);
    onStateChange();
}

// observe all tracks as they change and create and remove solo trackers as required.
function TracksTracker() {
    this.api = new LiveAPI(this.observe.bind(this), 'live_set');
    this.api.property = 'tracks';
}
TracksTracker.local = 1;

TracksTracker.prototype.observe = function (args) {
    if (args[0] !== 'tracks') {
        return;
    }
    // expect to see [ 'tracks', 'id', 1, 'id', 2, ...]
    var self = liveState.selfTracker;
    if (!self) {
        return;
    }
    var currentTrackIDs = {};
    var id;
    var solosTracker = liveState.solosTracker;

    // add new tracks
    for (var i = 2; i<args.length; i+=2) {
        id = args[i];
        if (id === self.id) {
            continue;
        }
        currentTrackIDs[id] = true;
        if (!solosTracker[id]) {
            solosTracker[id] = new SoloTracker(id);
        }
    }
    // remove tracks no longer present
    for (id in solosTracker) {
        if (solosTracker.hasOwnProperty(id)) {
            if (!currentTrackIDs[id]) {
                debug('remove solo tracker for:',id);
                delete solosTracker[id];
            }
        }
    }
    onStateChange();
}

var lastSent = -1;
// sends an output value only if plugin enabled and current value is different from the previous value sent
function sendOutput(val) {
    if (!enabled) {
        return
    }
    if (val !== lastSent) {
        lastSent = val;
        outlet(0,val);
    }
}
sendOutput.local = 1

function setFrozenUI(frozen) {
    var patcher = liveState.patcher;
    if (!patcher) {
        return;
    }
    var el = patcher.getnamed('frozen_text');
    if (el) {
        el.message('hidden', frozen ? 0 :1);
    }
}
setFrozenUI.local = 1;

// calculates the output solo value based on current state and sends it.
function onStateChange() {
    var self = liveState.selfTracker;
    if (!self) {
        return;
    }
    if (self.frozen) {
        sendOutput(0)
        return;
    }
    var soloValue = 0;
    var id;
    var solosTracker = liveState.solosTracker;
    for (id in solosTracker) {
        if (solosTracker.hasOwnProperty(id)) {
            if (solosTracker[id].solo) {
                soloValue = 1;
                break;
            }
        }
    }
    sendOutput(soloValue);
}
onStateChange.local = 1;

// 1 or 0 on the left inlet to enable/ disable. Right inlet should return the value sent for the solo property.
function msg_int(v) {
    if (inlet === 0) {
        enabled = v !== 0;
    } else {
        setSolo(v);
    }
}

// initialize the module. Cannot be done in global code since it depends on the Live API object to be initialized.
function init()  {
    liveState.patcher = this.patcher;
    liveState.selfTracker = new SelfTracker();
    liveState.tracksTracker = new TracksTracker();
}

// sets the 'solo' property of the current track. Workaround for not being able to do this in response to notifications.
// We output the expected solo value and expect that to be returned to us in the right inlet in a
// low priority thread using deferlow.
function setSolo(val) {
    debug('set solo to:', val);
    var self = liveState.selfTracker;
    if (!self) {
        return;
    }
    self.setSolo(val);
}
setSolo.local =1;


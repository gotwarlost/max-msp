var libIntervals = require('intervals');

inlets = 2;
outlets = 2;

setinletassist(0,"accept list of weight-values pairs for notes");
setinletassist(1,"accept list of weight-values pairs for intervals");
setoutletassist(0, "sends a clear + list messages to be consumed by prob");
setoutletassist(1, 'emits a 1 on errors, 0 on success');

function doError() {
    for (var i=0; i <arguments.length; i +=1) {
        error(arguments[i]);
    }
    post();
    outlet(1,1);
    return null;
}
doError.local = 1;

function sendMsg() {
    const values = arrayfromargs(arguments);
    values.unshift(0);
    outlet.apply(this, values);
}
sendMsg.local = 1;

var noteWeights = null;
var intervalWeights = null;

function sendProbs() {
    if (noteWeights === null || intervalWeights === null) {
        return;
    }
    const notes = Object.keys(noteWeights).map(function (s) { return Number(s) });
    sendMsg('clear');
    for (var left=0; left<notes.length; left++) {
        for (var right=left; right< notes.length; right++) {
            const interval = libIntervals.intervalBetween(notes[left], notes[right]);
            const leftNoteProb = noteWeights[notes[left]] || 0;
            const rightNoteProb = noteWeights[notes[right]] || 0;
            var leftTarget, rightTarget;
            if (interval === libIntervals.BIG_INTERVAL) {
                leftTarget = 1;
                rightTarget = 1;
            } else {
                const intervalProb = intervalWeights[interval] || 1;
                leftTarget = leftNoteProb * intervalProb;
                rightTarget = rightNoteProb * intervalProb;
            }
            sendMsg(notes[left], notes[right], rightTarget);
            sendMsg(notes[right], notes[left], leftTarget);
        }
    }
}
sendProbs.local = 1;

function list() {
    if (arguments.length === 0) {
        return doError("no arguments provided");
    }
    if (arguments.length % 2 !== 0) {
        return doError("invalid input must have even number of elements, inlet:",inlet, ', found', arguments.length, 'element(s)');
    }
    var map = {};
    for (var i = 0; i < arguments.length; i += 2) {
        map[arguments[i]] = arguments[i+1];
    }
    if (inlet === 0) {
        noteWeights = map;
    } else {
        intervalWeights = map;
    }
    sendProbs();
    outlet(1, 0);
}

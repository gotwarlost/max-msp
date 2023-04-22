
var BIG_INTERVAL = 999;
var intervalNames = [ 'U', 'm2', 'M2', 'm3', 'M3', 'P4', 'T', 'P5', 'm6', 'M6', 'm7', 'M7', 'O', 'm9', 'M9'];

function intervalBetween(v1, v2) {
    const diff = Math.abs(v1-v2);
    if (diff < intervalNames.length) {
        return diff;
    }
    return BIG_INTERVAL;
}

if (typeof exports === "undefined") {
    exports = {};
}

exports.BIG_INTERVAL = BIG_INTERVAL;
exports.intervalNames = intervalNames;
exports.intervalBetween = intervalBetween;


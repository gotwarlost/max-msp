inlets = 1;
outlets = 1;

var lib = require('intervals');

setinletassist(0, "accept list of note, weight pairs");
setoutletassist(0, "sends a set message with list of all intervals found");

function list() {
    const ret = [0]; // outlet number
    if (arguments.length % 2 !== 0) {
        error('arguments length was not even, expected note/ weight pairs')
    }
    const values = [];
    for (var a = 0; a < arguments.length; a += 2) {
        if (arguments[a+1] > 0) {
            values.push(arguments[a])
        }
    }
    for (var i = 0; i < values.length; i++) {
        for (var j = i; j < values.length; j++) {
            const x = lib.intervalBetween(values[i], values[j]);
            if (x !== lib.BIG_INTERVAL) {
                ret.push(x)
            }
        }
    }
    outlet.apply(this, ret);
}

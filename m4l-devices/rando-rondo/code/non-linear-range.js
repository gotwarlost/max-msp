inlets=2
outlets=2

var lastInput = 0,
    lastOutput = 0,
    valid = false,
    min = 0,
    mid = 0,
    max = 0;

function asNum(v) {
   if (typeof v === 'string') {
        const n = v * 1;
        if (!isNaN(n)) {
            return;
        }
    } else if (typeof v === 'number') {
       return v;
   }
    return null;
}

function setup() {
    if (jsarguments.length !== 4) {
        error('non-linear-range expects exactly 3 arguments');
    }
    min = asNum(jsarguments[1]);
    if (min === null) {
        error('invalid min:', jsarguments[1]);
        return;
    }
    mid = asNum(jsarguments[2]);
    if (mid === null) {
        error('invalid mid:', jsarguments[2]);
        return;
    }
    max = asNum(jsarguments[3]);
    if (max === null) {
        error('invalid max:', jsarguments[3]);
        return;
    }
    if (min > mid || mid > max) {
        error('values not in ascending order');
        return;
    }
    valid = true;
}
setup.local = 1;

setup();

function bang() {
    if (!valid) {
        return;
    }
    outlet(0, lastOutput);
}

function doInput(inp) {
    inp = Math.floor(inp);
    if (inp < 0) {
        inp = 0;
    }
    if (inp > 127) {
        inp = 127;
    }
    var out = 0;
    if (inp === 64) {
        out = mid;
    } else if (inp === 0) {
        out = min;
    } else if (inp === 127) {
        out = max;
    } else if (inp < 64) {
        out = min + inp * (mid - min) / 64.0;
    } else {
        out = mid + (inp - 64) * (max - mid) / 63.0;
    }
    if (lastOutput !== out) {
        lastInput = inp;
        lastOutput = out;
        outlet(0, out)
    }
}

function doOutput(out) {
    if (out < min) {
        out = min;
    }
    if (out > max) {
        out = max;
    }
    var inp = 0;
    if (out === min) {
        inp = 0;
    } else if (out === max) {
        inp = 127;
    } else if (out === mid) {
        inp = 64;
    } else if (out < mid) {
        inp = Math.floor((out - min) * 64 / (mid - min));
    } else {
        inp = 64 + Math.floor((out - mid) * 63 / (max - mid));
    }
    if (lastInput !== inp) {
        lastInput = inp;
        lastOutput = out;
        outlet(1, inp);
    }
}

function msg_int(v) {
    if (!valid) {
        return;
    }
    if (inlet === 0) {
        doInput(v);
    } else {
        doOutput(v);
    }
}

function msg_float(v) {
    if (!valid) {
        return;
    }
    if (inlet === 0) {
        doInput(v);
    } else {
        doOutput(v);
    }
}

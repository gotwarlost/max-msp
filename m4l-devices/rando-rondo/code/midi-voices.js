inlets = 3;
outlets = 2;
autowatch = 1;

var numVoices = 3,
    maxVoices = 25;

var lastVelocity = 0;

var pool = [],
    used = [];

var rPatch = 'patching_rect';

setinletassist(0,'connect makenote pitch');
setinletassist(1, 'connect makenote velocity');
setinletassist(2, 'number of voices');

setoutletassist(0,'connect to noteout pitch');
setoutletassist(1, 'connect to noteout velocity');

function makeSlot() {
    return { pitch: -1 };
}
makeSlot.local = 1;

function playSlot(slot, velocity) {
    outlet(1, velocity);
    outlet(0, slot.pitch);
}
playSlot.local = 1;

init();

function init() {
    pool = [];
    voices(numVoices);
}

function voices(n) {
    if (typeof n !== 'number') {
        return error('invalid voices',n,'not a number');
    }
    n = Math.floor(n);
    if (n < 1 || n > maxVoices) {
        return error('voices',n,'not in allowed range of 1..' + maxVoices);
    }
    numVoices = n;
    // add to the pool if asked to increase but do nothing when asked to decrease
    // the logic of freeing a slot and adding it back to the pool will take of this.
    const have = pool.length + used.length;
    for (var i=have; i<n; i ++) {
        pool.push(makeSlot());
    }
}

function remove(x, byPitch) {
    for (var i=0; i<used.length; i += 1) {
        const u = used[i];
        const shouldRemove = (byPitch && u.pitch === x) || (!byPitch && i === x);
        if (shouldRemove) {
            for (var j=i; j<used.length; j+=1) {
                used[j] = used[j+1];
            }
            used.length = used.length - 1;
            playSlot(u, 0);
            if (pool.length + used.length <= numVoices) { // return to pool only if we don't have more voices than we need
                pool.push(u);
            }
            return true;
        }
    }
    return false;
}
remove.local = 1;

function msg_int(v) {
    if (inlet === 2) {
        voices(v);
        return;
    }
    if (inlet === 1) {
        lastVelocity = v;
        return;
    }
    const pitch = v;
    if (lastVelocity === 0) {
        remove(pitch, true);
        return;
    }
    if (pool.length === 0) {
        remove(0, false);
    }
    if (pool.length === 0) { // can happen when voices are being reduced concurrently
        return;
    }
    const p = pool[pool.length-1];
    pool.length = pool.length - 1;
    p.pitch = pitch;
    used.push(p);
    playSlot(p, lastVelocity);
}

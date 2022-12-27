/**
 *  midi voices is a module that restricts the number of midi "voices" playing at any given time.
 *  The input to the object is the output of `makenote` and the output should be connected to `noteout`.
 *  An extra inlet allows for messages to change the number of voices. See the example patch for more details.
 *
 **/

autowatch = 1;
inlets = 3;
outlets = 2;

setinletassist(0,'connect makenote pitch');
setinletassist(1, 'connect makenote velocity');
setinletassist(2, 'number of voices');
setoutletassist(0,'connect to noteout pitch');
setoutletassist(1, 'connect to noteout velocity');

var defaultVoices = 3,
    maxVoices = 25;

// Pool keeps track of midi notes in-flight and automatically sends noteout messages with 0 velocity when they need
// to be constrained.
function Pool() {
    this.inFlight = [];
    this.voices = defaultVoices;
}
Pool.local = 1;

Pool.prototype.setVoices = function (n) {
    if (typeof n !== 'number') {
        return error('invalid voices',n,'not a number');
    }
    n = Math.floor(n);
    if (n < 1 || n > maxVoices) {
        return error('voices',n,'not in allowed range of 1..' + maxVoices);
    }
    this.voices = n;
}

Pool.prototype.sendNote = function (pitch, velocity) {
    outlet(1, velocity);
    outlet(0, pitch);
}

// remove ends an inflight note that is found either by index or pitch value
Pool.prototype.removeByPitch = function (x) {
    for (var i=0; i<this.inFlight.length; i += 1) {
        const pitch = this.inFlight[i];
        const shouldRemove = pitch === x;
        if (shouldRemove) {
            this.inFlight.splice(i,1);
            this.sendNote(pitch, 0);
            return true;
        }
    }
    return false;
}

Pool.prototype.next = function (pitch, velocity) {
    if (velocity === 0) {
        return this.removeByPitch(pitch);
    }

    const extra = this.inFlight.length - this.voices + 1; // 1 is for the slot we want the new note to have
    if (extra > 0) {
        const deleted = this.inFlight.splice(0,extra);
        for (var i=0 ;i <deleted.length; i++) {
            this.sendNote(deleted[i],0);
        }
    }
    this.inFlight.push(pitch);
    this.sendNote(pitch, velocity);
}

var pool = new Pool();
var lastVelocity = 0;

function msg_int(v) {
    if (inlet === 2) {
        pool.setVoices(v);
        return;
    }
    if (inlet === 1) {
        lastVelocity = v;
        return;
    }
    pool.next(v, lastVelocity)
}



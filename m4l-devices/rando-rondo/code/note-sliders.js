
autowatch = 1;

var noteNames = [ "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"];

// returns the text representation of a MIDI note number. Negative values are treated as a rest 'R'
// and invalid values return 'U'
function getLabel(v) {
    if (v < 24 || v > 127) {
        return 'U';
    }
    const octave = Math.floor((v-24) / 12);
    const noteIndex = Math.floor((v-24) % 12);
    const noteName = noteNames[noteIndex];
    return noteName + octave;
}

include("sliders-core");

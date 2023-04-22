
autowatch = 1;
var lib = require('intervals');

// returns the text representation of an interval. Invalid values return 'U'
function getLabel(v) {
    if (v < 0 || v >= lib.intervalNames.length) {
        return 'X';
    }
    return lib.intervalNames[v];
}

include("sliders-core");

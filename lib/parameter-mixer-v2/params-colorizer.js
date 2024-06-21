(function (world) {

    world.autowatch = 1;
    world.inlets = 1;
    world.outlets = 8;

    world.list = function () {
        const list = arrayfromargs(arguments);
        var found = {};
        var i;
        for (i=0; i<list.length; i++) {
            found[list[i]] = true;
        }
        for (i=0; i<8; i++) {
            const enabled = found[i+1];
            const bg = enabled ? 'Control On Variant' : 'Control off';
            const fg = enabled ? 'Text / Icon On' : 'Text / Icon Off';
            world.outlet(i,'activebgcolor',bg);
            world.outlet(i,'activetextcolor',fg);
        }
    }

})(this);

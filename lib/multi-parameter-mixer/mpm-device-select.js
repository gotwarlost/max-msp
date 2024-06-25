(function (world) {

    world.autowatch = 1;
    world.inlets = 1;
    world.outlets = 3;

    const indexOutlet = 0;
    const emptyOutlet = 1;
    const controlOutlet = 2;

    var items = [];
    var selectedDevices = {};

    const redraw = function () {
        var i;
        world.outlet(controlOutlet, "umenu", "clear");
        world.outlet(controlOutlet, "umenu", "clearchecks");
        world.outlet(controlOutlet, "cellblock", "clear");

        var selCount = 0;
        for (i=0; i<items.length; i++) {
            if (selectedDevices[i]) {
                selCount++;
            }
        }
        world.outlet(controlOutlet,"cellblock","rows",selCount);

        selCount = 0;
        for (i=0; i<items.length; i++) {
            const item = items[i];
            world.outlet(controlOutlet, "umenu", "append",item);
            if (selectedDevices[i]) {
                world.outlet(controlOutlet, "cellblock", "set", 0, selCount, item);
                world.outlet(controlOutlet, "umenu","checkitem",i,1);
                selCount++;
            }
        }
        world.outlet(controlOutlet,"umenu","showchecked");
    }

    world.set_item_list = function () {
        const args = arrayfromargs(arguments);
        items = [];
        for (var i=0; i<args.length; i++) {
            items.push(args[i]);
        }
        redraw();
    }

    world.set_selected_devices = function () {
        const args = arrayfromargs(arguments);
        selectedDevices = {};
        for (var i=0; i<args.length; i++) {
            selectedDevices[args[i]] = true;
        }
        redraw();
    }

    world.toggle_index = function (i) {
        if (selectedDevices[i]) {
            selectedDevices[i] = 0;
        } else {
            selectedDevices[i] = 1;
        }
        redraw();
    }

    world.done_clicked = function () {
        const selected = [ indexOutlet ];
        for (var i=0; i< items.length; i++) {
            if (selectedDevices[i]) {
                selected.push(items[i]);
            }
        }
        if (selected.length === 1) {
            world.outlet(emptyOutlet, "bang");
        } else {
            world.outlet.apply(world,selected);
        }
    }

    world.initialize = function () {
    }

})(this);

(function (world) {
    world.autowatch = 1;
    world.inlets = 1;
    world.outlets = 2;

    var deviceList = [];

    world.set_device_list = function () {
        deviceList = arrayfromargs(arguments);
        post('device-list: input list',deviceList.join(' | '),'\n');
        world.outlet(0, "bang");
    }

    world.getvalueof = function () {
        return JSON.stringify(deviceList);
    }

    world.setvalueof = function (state) {
        const val = JSON.parse(state);
        if (val && val.length) {
            deviceList = val;
            world.outlet(1, "bang");
        }
    }

})(this);
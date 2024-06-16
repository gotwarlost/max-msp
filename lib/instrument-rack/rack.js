(function (world) {
    const devices = require('devices');
    var veryFirstInit = true;
    var rackDevice, settingUp;

    const setupRack = function () {
        settingUp = true;
        rackDevice = null;
        const me = new LiveAPI(null,"this_device");
        const myPath = me.path;

        const track = new LiveAPI(null, "this_device canonical_parent");
        if (!track || track.type === 'unknown') {
            error('could not find track for this device\n');
            return;
        }

        const deviceList = devices.filterIDs(track.get('devices'));
        var found = false;
        for (var i =0 ; i < deviceList.length; i++) {
            const device = devices.liveFromID(deviceList[i]);
            if (device.path === myPath) {
                found = true;
                continue;
            }
            if (!found) { // we haven't hit our device yet
                continue;
            }
            // the very next device must be a rack device
            if (device.type !== 'RackDevice') {
                error('downsteam device was not a rack device, found:', device.type);
                return;
            }
            post('found a rack device next to me\n');
            const device2 = devices.liveFromID(deviceList[i], maybeInit);
            device2.property = 'chains';
            rackDevice = new devices.RackDevice(device2);
            break;
        }
    }

    const maybeInit = function () {
        if (arguments[0].length && arguments[0][0] === 'chains') {
            if (settingUp) { // avoid an infinite loop for the first chains message
                settingUp = false;
                return;
            }
            initialize();
        }
    }

    const sendParamNames = function () {
        const params = rackDevice.samplerParams();
        if (params) {
            const args = [0, 'sampler_param_names'];
            for (var i=0; i<params.names.length; i++) {
                args.push(params.names[i])
            }
            world.outlet.apply(world,args);
            return true;
        }
        return false;
    }

    const initialize = function() {
        setupRack();
        if (rackDevice) {
            world.outlet(0, 'num_chains', rackDevice.numChains());
            world.outlet(0, 'num_samplers', rackDevice.numSamplers());

            if (veryFirstInit) {
                veryFirstInit = !sendParamNames();
            }
        }
    }

    world.autowatch = 1;
    world.inlets = 1;
    world.outlets = 1;
    world.bang = initialize;
    world.set_param = function (name, value) {
        post('SET PARAM',name,value,'\n');
        if (rackDevice) {
            rackDevice.setParamValue(name, value);
        }
    }
})(this);


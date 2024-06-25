(function (world) {

    world.autowatch = 1;
    world.inlets = 1;
    world.outlets = 2;

    const commandOutlet = 0;
    const storageOutlet = 1

    world.setinletassist(0, "inlet for commands");
    world.setoutletassist(commandOutlet, "outlet for commands");

    function DeviceParameters(device) {
        const names = [];
        const params = [];
        const paramIds = filterIDs(device.get('parameters'));
        var i;
        for (i = 0; i < paramIds.length; i++) {
            const param = liveFromID(paramIds[i]);
            const name = param.get('name');
            names.push(name);
            params.push({
                name: name,
                obj: param,
                id: paramIds[i],
                min:  param.get('min'),
                max:  param.get('max'),
            })
        }
        names.sort();
        this.names = names;
        this.params = params;
        this.rightMix = 0;
        this.setValues(this.deviceValues(), 1);
    }

    DeviceParameters.prototype.deviceValues = function()  {
        var ret = [];
        var i;
        for (i = 0; i < this.params.length; i++) {
            const param = this.params[i];
            const val =  param.obj.get('value');
            ret.push(val);
        }
        return ret;
    }

    DeviceParameters.prototype.setValues = function(values, side) {
        var i;
        for (i = 0; i < this.params.length; i++) {
            const param = this.params[i];
            const val =  values[i];
            if (side == 2) {
                param.right = val;
            } else {
                param.left = val;
                if (param.right === undefined) { // initialization
                    param.right = val;
                }
            }
        }
    }

    DeviceParameters.prototype.setDeviceValues = function(values) {
        var i;
        for (i = 0; i < this.params.length; i++) {
            const param = this.params[i];
            param.obj.set('value', values[i]);
        }
    }

    DeviceParameters.prototype.setMix = function (rightMix) {
        this.rightMix = rightMix;
        var i;
        for (i = 0; i < this.params.length; i++) {
            const param = this.params[i];
            const value = (1 - this.rightMix) * param.left + this.rightMix * param.right;
            param.obj.set('value', value);
        }
    }

    var devices = {};
    var recallSide = 0;

    const hasDevices = function () {
        for (k in devices) {
            if (devices.hasOwnProperty(k)) {
                return 1;
            }
        }
        return 0;
    }
    const selectedDevices = function () {
        const ret = [];
        for (k in devices) {
            if (!devices.hasOwnProperty(k)) {
                continue;
            }
            ret.push(k);
        }
        return ret;
    }

    const liveFromID = function(id, callback) {
        if (!callback) {
            callback = null;
        }
        return new LiveAPI(callback,'id ' + id);
    }

    const filterIDs = function(input) {
        const out = [];
        var i;
        for (i=0; i< input.length; i++) {
            if (input[i] === 'id') {
                continue
            }
            out.push(input[i])
        }
        return out;
    }

    const trackPath = "this_device canonical_parent";
    const mspDevicePath = "this_device";

    const withDevices = function (callback) {
        const me = new LiveAPI(null,mspDevicePath);
        const myPath = me.path;

        const track = new LiveAPI(null, trackPath);
        if (!track || track.type === 'unknown') {
            error('could not find track for this device\n');
            return;
        }

        const deviceList = filterIDs(track.get('devices'));
        var i;
        for (i =0 ; i < deviceList.length; i++) {
            const device = liveFromID(deviceList[i]);
            if (device.path === myPath) {
                continue;
            }
            callback(device);
        }
    }

    const allDevices = function () {
        const ret = [];
        withDevices(function (d) {
            ret.push(d.get('name'));
        })
        return ret;
    }

    const deviceFromName = function (name) {
        var ret = null;
        withDevices(function (device) {
            if (device.get('name') == name) {
                ret = device;
            }
        })
        return ret;
    }

    const reportDevicePresent = function () {
        world.outlet(commandOutlet, "has_devices",hasDevices());
    }

    var listeners;
    const listenForDeviceChanges = function () {
        listeners = [];
        listeners.push(new LiveAPI(updateDeviceList, trackPath));
        const deviceChanges = new LiveAPI(updateDeviceList, trackPath);
        deviceChanges.property = "devices";
        listeners.push(deviceChanges);
    }

    const updateDeviceList = function () {
        const dl = allDevices();
        const nameMap = {};
        for (var i=0; i<dl.length; i++) {
            nameMap[dl[i]] = true;
        }

        dl.unshift(commandOutlet,"device_list");
        world.outlet.apply(world,dl);
        removeUnknownDevices(nameMap);
        world.set_selected_devices.apply(world, selectedDevices());
    }

    const removeUnknownDevices = function (nameMap) {
        const removeKeys = [];
        var i,k;
        for (k in devices) {
            if (!devices.hasOwnProperty(k)) {
                continue;
            }
            if (!nameMap[k]) {
                removeKeys.push(k);
            }
        }
        for (i=0; i <removeKeys.length; i++) {
            k = removeKeys[i];
            delete devices[k]
        }
    }

    var initialized = false;
    var initDeviceNames = [];

    world.initialize = function () {
        post('initialize\n');
        devices = {};
        listenForDeviceChanges();
        updateDeviceList();
        initialized = true;
        if (initDeviceNames.length === 0) {
            world.set_selected_devices("Compressor"); // FIXME
        } else {
            world.set_selected_devices.apply(world,initDeviceNames);
        }
    }

    world.set_selected_devices = function () {
        const names = arrayfromargs(arguments);
        if (names.length > 0) {
            post('set_selected_devices',names.join(" | "),'\n');
        }

        if (!initialized) {
            post('save device names for restore:\n');
            initDeviceNames = names;
            return;
        }

        const nameMap = {};
        for (var i=0; i<names.length; i++) {
            nameMap[names[i]] = true;
        }
        removeUnknownDevices(nameMap);
        for (k in nameMap) {
            if (!nameMap.hasOwnProperty(k)) {
                continue;
            }
            if (!devices[k]) {
                const d = deviceFromName(k);
                if (d === null) {
                    error('no device with name',k,'\n');
                    continue;
                }
                post('create new device:',k);
                devices[k] = new DeviceParameters(d);
            }
        }
        reportDevicePresent();
        const list = selectedDevices();
        list.unshift(commandOutlet, "selected_devices");
        world.outlet.apply(world,list)
    }

    world.set_recall_side = function (side) {
        // post('set_recall_side',side,'\n');
        recallSide = side;
    }

    world.getvalueof = function () {
        // post('getvalueof\n');
        const ret = {};
        for (k in devices) {
            if (!devices.hasOwnProperty(k)) {
                continue;
            }
            ret[k] = devices[k].deviceValues();
        }
        const state = JSON.stringify(ret);
        return state;
    }

    world.setvalueof = function (state) {
        world.set_value(state);
    }

    world.set_value = function (state) {
        if (!(typeof state === 'string')) {
            error('state was not a string:', typeof state,'\n');
            return;
        }
        const values = JSON.parse(state);
        for (k in values) {
            if (!values.hasOwnProperty(k)) {
                continue;
            }
            const params = devices[k];
            if (!params) {
                continue;
            }
            if (recallSide === 0) {
                params.setDeviceValues(values[k]);
            } else {
                params.setValues(values[k],recallSide);
            }
        }
    }

    world.set_mix = function (rightMix) {
        for (k in devices) {
            if (!devices.hasOwnProperty(k)) {
                continue;
            }
            devices[k].setMix(rightMix);
        }
    }

})(this);

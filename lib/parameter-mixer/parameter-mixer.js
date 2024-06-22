(function (world) {

    world.autowatch = 1;
    world.inlets = 1;
    world.outlets = 4;

    const commandOutlet = 0;
    const hasDeviceOutlet = 1;
    const storageOutlet = 2
    const dumpOutlet = 3;
    const nullDevice = "<no device selected>";

    world.setinletassist(0, "inlet for commands");
    world.setoutletassist(commandOutlet, "outlet for commands");
    world.setoutletassist(hasDeviceOutlet, "sends 1 when a valid device is connected, 0 otherwise");
    world.setoutletassist(storageOutlet, "outlet to connect to the pattrstorage");
    world.setoutletassist(dumpOutlet, "outlet for debug table that can be sent to a jit.cellblock");

    var theDevice = null; // the current device that is controlled
    var filtered = 0; // whether to dump only the values that are different between left and right
    var recallSide = 0; // the side to which presets are recalled (0 = none, 1 = left, 2 = right)

    const isNullDevice = function (name) {
        return name == "" || name == nullDevice;
    }

    function filterIDs(input) {
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

    function liveFromID(id, callback) {
        if (!callback) {
            callback = null;
        }
        return new LiveAPI(callback,'id ' + id);
    }

    function DeviceParameters(device) {
        const names = [];
        const params = [];
        const paramIds = filterIDs(device.get('parameters'));
        const nameToIndex = {};
        var i;
        for (i = 0; i < paramIds.length; i++) {
            const param = liveFromID(paramIds[i]);
            if (param.get('is_quantized') == 1) {
                continue;
            }
            const name = param.get('name');
            names.push(name);
            params.push({
                obj: param,
                name: name,
                id: paramIds[i],
                min:  param.get('min'),
                max:  param.get('max'),
            })
            nameToIndex[name] = params.length - 1;
        }
        names.sort();
        this.names = names;
        this.nameToIndex = nameToIndex;
        this.params = params;
        this.rightMix = 0;
        const values = this.deviceValues();
        this.setValues(values, 1);
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
        this.dump();
    }

    DeviceParameters.prototype.setDeviceValues = function(values) {
        var i;
        for (i = 0; i < this.params.length; i++) {
            const param = this.params[i];
            param.obj.set('value', values[i]);
        }
        this.dump();
    }

    DeviceParameters.prototype.setMix = function (rightMix) {
        this.rightMix = rightMix;
        var i;
        for (i = 0; i < this.params.length; i++) {
            const param = this.params[i];
            param.obj.set('value', this.current(param));
        }
        this.dump();
    }

    DeviceParameters.prototype.current = function (param) {
        return (1 - this.rightMix) * param.left + this.rightMix * param.right;
    }

    DeviceParameters.prototype.filterNames = function() {
        const ret = [];
        for (i = 0; i < this.names.length; i++) {
            const k = this.names[i];
            const index = this.nameToIndex[k];
            const param = this.params[index];
            const diff = Math.abs(param.left - param.right) > 1e-6;
            if (diff) {
                ret.push(k);
            }
        }
        return ret;
    }

    DeviceParameters.prototype.dump = function () {
        const names = filtered == 1 ? this.filterNames() : this.names;
        const nameToIndex = this.nameToIndex;
        world.outlet(dumpOutlet, 'clear', 'all');
        world.outlet(dumpOutlet, 'rows', names.length + 1);
        var i;
        world.outlet(dumpOutlet,'set',0,0, '#');
        world.outlet(dumpOutlet,'set',1,0, 'Name');
        world.outlet(dumpOutlet,'set',2,0, 'Left');
        world.outlet(dumpOutlet,'set',3,0, 'Current');
        world.outlet(dumpOutlet,'set',4,0, 'Right');
        world.outlet(dumpOutlet,'set',5,0, 'Min');
        world.outlet(dumpOutlet,'set',6,0, 'Max');
        for (i = 0; i < names.length; i++) {
            const k = names[i];
            const index = nameToIndex[k];
            const param = this.params[index];
            var value = this.current(param);
            world.outlet(dumpOutlet,'set',1,i+1, k);
            world.outlet(dumpOutlet,'set',2,i+1, param.left);
            world.outlet(dumpOutlet,'set',3,i+1, value);
            world.outlet(dumpOutlet,'set',4,i+1, param.right);
            world.outlet(dumpOutlet,'set',5,i+1, param.min);
            world.outlet(dumpOutlet,'set',6,i+1, param.max);
        }
    }

    function Device(device) {
        this.name = device.get('name');
        this.params = new DeviceParameters(device);
    }

    const withDevices = function (callback) {
        const me = new LiveAPI(null,"this_device");
        const myPath = me.path;

        const track = new LiveAPI(null, "this_device canonical_parent");
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

    const getDeviceList = function () {
        const ret = [ nullDevice ];
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

    var initialized = 0;
    var initDevice = "";

    const reportDevicePresent = function () {
        world.outlet(hasDeviceOutlet, theDevice !== null);
    }

    /* public functions */
    world.initialize = function () {
        //post('initialize\n');
        const list = getDeviceList();
        const items = [commandOutlet, "device_list"];
        var i;
        for (i=0; i<list.length; i++) {
            items.push(list[i]);
        }
        world.outlet.apply(world, items);
        if (!isNullDevice(initDevice)) {
            world.set_selected_device(initDevice,true);
            initDevice = "";
        }
        initialized = 1;
        reportDevicePresent();
        world.outlet(commandOutlet,"initialized");
        //post('initialization complete');
    }

    world.set_selected_device = function (name, force) {
        // post('set_selected_device', name, '\n');
        if (!initialized && !force) {
            // post('save initial device name',name,'\n');
            initDevice = name;
            return;
        }
        const device = deviceFromName(name);
        if (device === null) {
            theDevice = null;
            return reportDevicePresent();
        }
        if (theDevice != null && theDevice.name === name) {
            // post('existing device, noop\n');
            return reportDevicePresent();
        }
        if (initialized) {
            post('clear storage\n');
            world.outlet(storageOutlet,"clear")
        }
        theDevice = null;
        // post('create device\n');
        theDevice = new Device(device);
        if (initialized) {
            // post('initialize storage\n');
            world.outlet(storageOutlet,"store",1);
        }
        world.outlet(commandOutlet,"selected_device", name);
        return reportDevicePresent();
    }

    world.getvalueof = function () {
        // post('getvalueof\n');
        if (theDevice === null) {
            return "[]";
        }
        const values = theDevice.params.deviceValues();
        return JSON.stringify(values);
    }

    world.setvalueof = function (state) {
        world.set_value(state);
    }

    world.set_recall_side = function (side) {
        // post('set_recall_side',side,'\n');
        recallSide = side;
    }

    world.set_value = function (state) {
        // post('set_value','side:',recallSide,'\n');
        if (theDevice === null) {
            return;
        }
        if (!(typeof state === 'string')) {
            error('state was not a string:', typeof state,'\n');
            return;
        }
        const values = JSON.parse(state);
        if (recallSide === 0) {
            theDevice.params.setDeviceValues(values);
            return;
        }
        theDevice.params.setValues(values,recallSide);
    }

    world.set_mix = function (rightMix) {
        if (theDevice === null) {
            // post('setmix: no device\n');
            return;
        }
        theDevice.params.setMix(rightMix);
    }

    world.set_filtered = function (f) {
        filtered = f;
        if (theDevice === null) {
            return;
        }
        theDevice.params.dump();
    }

})(this);


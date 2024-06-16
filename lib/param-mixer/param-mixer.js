(function (world) {
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
                left:  param.get('value'),
                right:  param.get('value'),
                min:  param.get('min'),
                max:  param.get('max'),
            })
            nameToIndex[name] = params.length - 1;
        }
        names.sort();
        this.names = names;
        this.nameToIndex = nameToIndex;
        this.params = params;
        this.rightMix = 1;
    }

    DeviceParameters.prototype.saveParams = function (line) {
        var i;
        for (i = 0; i < this.params.length; i++) {
            const param = this.params[i];
            const val =  param.obj.get('value');
            if (line === 1) {
                param.right = val
            } else {
                param.left = val;
            }
        }
        this.setMix(this.rightMix);
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

    var filtered = 0;

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
        world.outlet(1, 'clear', 'all');
        world.outlet(1, 'rows', names.length + 1);
        var i;
        world.outlet(1,'set',0,0, '#');
        world.outlet(1,'set',1,0, 'Name');
        world.outlet(1,'set',2,0, 'Left');
        world.outlet(1,'set',3,0, 'Current');
        world.outlet(1,'set',4,0, 'Right');
        world.outlet(1,'set',5,0, 'Min');
        world.outlet(1,'set',6,0, 'Max');
        for (i = 0; i < names.length; i++) {
            const k = names[i];
            const index = nameToIndex[k];
            const param = this.params[index];
            var value = this.current(param);
            world.outlet(1,'set',0,i+1, i+1);
            world.outlet(1,'set',1,i+1, k);
            world.outlet(1,'set',2,i+1, param.left);
            world.outlet(1,'set',3,i+1, value);
            world.outlet(1,'set',4,i+1, param.right);
            world.outlet(1,'set',5,i+1, param.min);
            world.outlet(1,'set',6,i+1, param.max);
        }
    }

    DeviceParameters.prototype.saveState = function () {
        const names = this.names;
        const nameToIndex = this.nameToIndex;
        var i;
        var data = {};
        for (i = 0; i < names.length; i++) {
            const k = names[i];
            const index = nameToIndex[k];
            const param = this.params[index];
            data[k] = { left: param.left, right: param.right};
        }
        world.outlet(2,JSON.stringify(data));
    }

    DeviceParameters.prototype.loadState = function (obj) {
        const names = this.names;
        const nameToIndex = this.nameToIndex;
        var i;
        for (i = 0; i < names.length; i++) {
            const k = names[i];
            const index = nameToIndex[k];
            const param = this.params[index];
            const state = obj[k];
            if (state) {
                param.left = state.left;
                param.right = state.right;
            }
        }
        this.setMix(this.rightMix);
    }

    function Device(device) {
        this.obj = device;
        this.params = new DeviceParameters(device);
    }

    var theDevice = null;

    world.autowatch = 1;
    world.inlets = 3;
    world.outlets = 4;

    world.initialize = function () {
        const me = new LiveAPI(null,"this_device");
        const myPath = me.path;

        const track = new LiveAPI(null, "this_device canonical_parent");
        if (!track || track.type === 'unknown') {
            error('could not find track for this device\n');
            return;
        }

        const deviceList = filterIDs(track.get('devices'));
        var prevDevice = null;
        var i;
        for (i =0 ; i < deviceList.length; i++) {
            const device = liveFromID(deviceList[i]);
            if (device.path === myPath) {
                break;
            }
            prevDevice = device;
        }
        if (prevDevice === null) {
            error('no previous device found, abort\n');
            return;
        }
        theDevice = new Device(prevDevice);
        world.outlet(0, prevDevice.get('name'));
        theDevice.params.dump();
    }

    world.save_params = function (line) {
        if (theDevice === null) {
            return;
        }
        theDevice.params.saveParams(line);
        theDevice.params.saveState();
        world.outlet(3,"bang")
    }

    world.set_mix = function (rightMix) {
        if (theDevice === null) {
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

    world.load_state = function (str) {
        if (theDevice === null) {
            return;
        }
        const obj = JSON.parse(str);
        theDevice.params.loadState(obj);
    }
})(this);


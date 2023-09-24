function filterIDs(input) {
    const out = [];
    for (var i=0; i< input.length; i++) {
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

function DeviceParameters(parent) {
    const names = [];
    const params = filterIDs(parent.get('parameters'));
    const byName = {};
    for (var i = 0; i < params.length; i += 1) {
        const param = liveFromID(params[i]);
        const name = param.get('name');
        names.push(name);
        byName[name] = {
            index: i,
            value: param.get('value'),
            min: param.get('min'),
            max: param.get('max'),
        };
    }
    names.sort();
    this.names = names;
    this.byName = byName;
}

DeviceParameters.prototype.dump = function () {
    const names = this.names;
    const byName = this.byName;
    for (var i = 0; i < names.length; i++) {
        const k = names[i];
        const v = byName[k];
        post("param: ", k, " index:", v.index, " id:", v.id, ' value:', v.value, ' min:', v.min, ' max:', v.max, '\n');
    }
}

function Sampler(obj) {
    if (!obj || obj.type === 'unknown') {
        throw new Error("no object supplied ");
    }
    if (obj.type !== 'SimplerDevice') {
        throw new Error('object was of type ' + obj.type + ', want SimplerDevice');
    }
    this.path = obj.path;
    this.obj = obj;
}

Sampler.prototype.setValue = function (index, value) {
    const path = this.obj.unquotedpath + ' parameters ' + index;
    const obj = new LiveAPI(null, path);
    obj.set('value', value);
}

function Chain(obj) {
    if (!obj || obj.type === 'unknown') {
        throw new Error("no object supplied ");
    }
    if (obj.type !== 'Chain') {
        throw new Error('object was of type ' + obj.type + ', want Chain');
    }
    const devices = filterIDs(obj.get('devices'));
    var sampler = null;
    for (var i = 0; i < devices.length; i++) {
        const device = liveFromID(devices[i]);
        if (device.type === 'SimplerDevice') {
            sampler = new Sampler(device);
        } else {
            post('found unsupported device of type:', device.type,'\n');
        }
    }
    this.sampler = sampler;
}

function RackDevice(obj) {
    if (!obj || obj.type === 'unknown') {
        throw new Error("no object supplied ");
    }
    if (obj.type !== 'RackDevice') {
        throw new Error('object was of type ' + obj.type + ', want RackDevice');
    }
    this.path = obj.path;
    this.obj = obj;

    const chains = filterIDs(obj.get('chains'));
    const chainObjects = [];
    for (var i = 0; i < chains.length; i++) {
        const chainObj = liveFromID(chains[i]);
        const chain = new Chain(chainObj);
        chainObjects.push(chain);
    }
    this.chains = chainObjects;
}

RackDevice.prototype.numChains = function () {
    return this.chains.length;
}

RackDevice.prototype.numSamplers = function () {
    var count = 0;
    for (var i = 0; i < this.chains.length; i++) {
        if (this.chains[i].sampler) {
            count++;
        }
    }
    return count;
}

RackDevice.prototype.samplerParams = function () {
    for (var i = 0; i < this.chains.length; i++) {
        if (this.chains[i].sampler) {
            return new DeviceParameters(this.chains[i].sampler.obj);
        }
    }
    return null;
}

RackDevice.prototype.setParamValue = function (name, value) {
    const params = this.samplerParams();
    const byName = params.byName;
    const param = byName[name];
    if (!param) {
        error('no param with name:',name,'\n');
        return
    }
    for (var i = 0; i < this.chains.length; i++) {
        if (this.chains[i].sampler) {
            this.chains[i].sampler.setValue(param.index,value);
        }
    }

}

exports.liveFromID = liveFromID;
exports.filterIDs = filterIDs;
exports.SimplerDevice = Sampler;
exports.RackDevice = RackDevice;
exports.DeviceParameters = DeviceParameters;
exports.Chain = Chain;



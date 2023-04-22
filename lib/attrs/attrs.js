// attrs.js allows the user to create named attributes for JS objects.
// You have to "include" this file rather than "require" it.
// It stores a reference to `this` and allows simple attribute creation.
//
// Usage (in your JS code)
//
// include('attrs');
// attrs.make('color', [ 0.349, 0.349, 0.349, 1.000], attrs.types.color, redraw);
//
// The arguments in order are:
// attribute name - this will be exposed on your object, so you can simply use the attribute name as a variable in code.
// default value - must be specified. The type of value should validate successfully when a validator is present.
// validator function - optional function to validate input. Canned values are attrs.types.color and attr.types.int
// callback function - optional function to call when the attribute is changed.
//
// in your code you can get the `color` attribute by simply using a variable called `color`. To set the value
// programmatically, you can use the attr_color function (example: attr_color(1,1,1,1))
//
// The above example will enable your JS object to accept an `attr_color` message automatically.
// Attributes will be set only if they pass validation and the callback function will be called
// on change.

var attrs = {}

attrs.make = (function (that) {
    return function (name, defaultValue, checker, after) {
        const getPrefix = '__get_',
            setPrefix = 'attr_';

        if (!checker) {
            checker = typeof defaultValue.length === 'number' ?
                function () { return that.arrayfromargs(arguments); } :
                function (v) { return v; };
        }
        defaultValue = typeof defaultValue.length === 'number' ? checker.apply(that, defaultValue) : checker(defaultValue);
        if (defaultValue === null) {
            that.error('invalid attribute',name,'invalid default\n');
            return;
        }
        // create the name
        that[name] = defaultValue;
        // and a getter
        that[getPrefix + name] = function() {
            return that[name];
        };
        that[getPrefix + name].local = 1;
        // use the checker to create a setter
        that[setPrefix + name] = function () {
            const values = that.arrayfromargs(arguments);
            const output = typeof defaultValue.length === 'number' ? checker.apply(that, values) : checker(arguments[0]);
            if (output === null) {
                that.error('error setting attribute',name,'value was:',values,'\n');
                return;
            }
            that[name] = output;
            if (typeof after === 'function') {
                after();
            }
        };
        that.declareattribute(name, getPrefix + name, setPrefix + name, 1);
    };
})(this);

attrs.types = (function (that) {
    return {
        int: function (v) {
            if (typeof v === 'number') {
                return Math.floor(v);
            }
            if (typeof v === 'string') {
                const n = v * 1;
                if (!isNaN(n)) {
                    return Math.floor(n);
                }
            }
            return null;
        },
        color: function () {
            const values = that.arrayfromargs(arguments);
            if (values.length !== 4) {
                return null;
            }
            for (var i=0; i<values.length; i+=1) {
                if (typeof values[i] !== 'number') {
                    return null;
                }
                if (!(values[i] >= 0 && values[i] <= 1)) {
                    return null;
                }
            }
            return values;
        }
    };
})(this);



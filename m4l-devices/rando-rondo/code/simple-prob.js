inlets = 1;
outlets = 2;

setinletassist(0,"accept list of weight-values pairs");
setoutletassist(0, "sends a clear + list messages to be consumed by prob");
setoutletassist(1, 'emits a 1 on errors, 0 on success');

function doError() {
    for (var i=0; i <arguments.length; i +=1) {
        error(arguments[i]);
    }
    post();
    outlet(1,1);
    return null;
}
doError.local = 1;

function sendMsg() {
    const values = arrayfromargs(arguments);
    values.unshift(0);
    outlet.apply(this, values);
}
sendMsg.local = 1;

function list() {
    const values = arrayfromargs(arguments);
    const tuples = [];
    if (values.length === 0) {
        return doError("no values provided");
    }
    if (values.length % 2 !== 0) {
        return doError("invalid input must have even number of elements");
    }
    var i,j;
    for (i=0; i<values.length; i+=2) {
        tuples.push({
           value: values[i],
           weight: values[i + 1]
        });
    }
    sendMsg('clear');
    for (i=0; i<tuples.length; i++) {
        const first = tuples[i];
        for (j = i; j <tuples.length; j++) {
            const second = tuples[j];
            sendMsg(first.value, second.value, second.weight);
            sendMsg(second.value, first.value, first.weight);
        }
    }
    sendMsg(tuples[0].value);
    outlet(1, 0);
}

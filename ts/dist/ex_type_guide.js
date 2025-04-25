"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const isStringNumber = (value) => Array.isArray(value) &&
    // value.length >= 2 &&
    typeof value[0] === 'string' &&
    typeof value[1] === 'number';
const f1 = (value) => {
    if (isStringNumber(value)) {
        console.log(value[0].toUpperCase(), value[1].toFixed());
    }
};
f1(['item', 1000]);
class Retriever {
    name;
    constructor(name) {
        this.name = name;
    }
}
function isDog(a) {
    return 'name' in a && typeof a.name === 'string';
}
const maxx = { name: 'Maxx' };
if (isDog(maxx))
    console.log(maxx.name, 'is Dog!');
const gunhee = new Retriever('Gunhee');
if (isDog(gunhee))
    console.log(gunhee.name, 'is Dog!');
// ---------------------------
const constCart = {
    X: 1,
    Y: 2,
    Z: 3,
};
const xCart = { x: 1, y: 'str' };
const isErrorWithMessage = (error) => typeof error === 'object' &&
    error !== null &&
    'message' in error &&
    typeof error.message === 'string';
// (error as Record<string, unknown>).message === 'string'
const toErrorWithMessage = (error) => isErrorWithMessage(error) ? error : new Error(JSON.stringify(error));
try {
    // throw new Error('some error!!!!');   // 가
    // throw 'some string error!!!';        // 나
    throw ['some', 'array', 'error']; // 다
}
catch (error) {
    console.log(toErrorWithMessage(error).message); // (라)
}
function deleteArray(arr, startOrKey, endOrValue) {
    if (typeof startOrKey === 'number') {
        if (typeof endOrValue === 'number') {
            return arr.filter((_, i) => i < startOrKey || i > endOrValue - 1);
        }
        return arr.slice(0, startOrKey);
    }
    if (typeof startOrKey === 'string') {
        console.log('🚀 startOrKey:', startOrKey);
        return arr.filter(e => {
            if (e && typeof e === 'object') {
                return e[startOrKey] !== endOrValue;
            }
        });
    }
    if (typeof startOrKey === 'symbol') {
    }
    return [];
}
const arr = [1, 2, 3, 4];
console.log(deleteArray(arr, 2)); // [1, 2]
console.log(deleteArray(arr, 1, 3)); // [1, 4]
console.log(arr); // [1, 2, 3, 4]
const users = [
    { id: 1, name: 'Hong' },
    { id: 2, name: 'Kim' },
    { id: 3, name: 'Lee' },
];
console.log(deleteArray(users, 2)); // [Hong, Kim]
console.log(deleteArray(users, 1, 2)); // [Hong, Lee]
console.log(deleteArray(users, 'id', 2)); // [Hong, Lee]
console.log(deleteArray(users, 'name', 'Lee')); // [Hong, Kim]

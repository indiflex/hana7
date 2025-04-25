"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const data_json_1 = __importDefault(require("./data.json"));
let x = { id: 1, name: 'Hong' };
let ft;
let xxxx = data_json_1.default.USER_NAMES;
console.log('🚀 xxxx:', xxxx);
// type Err = Change<IDept, 'xxx', IUser>; // 존재하지 않는 키는 Error!!!
const dc = {
    id: 2,
    age: '1년',
    dname: 'Sales',
    captain: { id: 1, name: 'Hong', age: 33 },
};
const stock = { X: 1, Y: 2, Z: 30 };
const itemPrices = [
    { item: 'X', price: 1000 },
    { item: 'Y', price: 2000 },
    { item: 'Z', price: 3000 },
    // { item: 'P', price: 4000 }, // stock에 존재하지 않는 키는 Error!!!
];
const total = itemPrices.reduce((curr, itemPrice) => curr + stock[itemPrice.item] * itemPrice.price, 0);
// ---------------------------------------
function deleteArray(arr, startOrKey, endOrValue) {
    if (typeof startOrKey === 'number') {
        if (typeof endOrValue === 'number') {
            return arr.filter((_, i) => i < startOrKey || i > endOrValue - 1);
        }
        return arr.slice(0, startOrKey);
    }
    if (typeof startOrKey === 'string') {
        return arr.filter(e => {
            if (e && typeof e === 'object') {
                return e[startOrKey] !== endOrValue;
            }
        });
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

"use strict";
const myName = 'Sico';
let age;
age = 33;
// console.blub(age);
let lastName = 'King';
lastName = true;
age = '100';
console.log(`Hello, ${myName} ${age}!`);
let nm = 'Hong';
if (nm === 'Hong')
    nm = 'Kim';
const something = ({ id, name, age, address }) => {
    // Do something...
    console.log(id, name, age, address);
};
const user = { id: 1, name: 'Hong', age: 33, address: 'Seoul' };
something(user);
let x = Math.random() > 0.5 ? 'str' : undefined;
console.log('🚀 x:', x?.length);
let y = x;
let z;
if (x)
    z = x;
if (typeof x === 'string')
    z = x;
let cust;
let m;
let g;
let mg;
cust = {
    name: '홍길동',
    addr: '용산구',
    discountRate: 0.1,
    kind: 'M',
};
if (cust instanceof Object)
    cust = { name: '', age: 0, kind: 'G' };
mg = cust;
cust = {
    name: '',
    age: 33,
    kind: 'G',
};
cust = {
    name: '홍길동',
    addr: '용산구',
    discountRate: 0.1,
    // age: 26,
    kind: 'M',
};
mg = cust;
// cust = { name: '', age: 8 };
// console.log('🚀 cust:', cust);
if ('addr' in cust)
    m = cust;
// if ('age' in cust) g = cust;
// if (cust.kind === 'G') g = cust;
cust = {
    name: '홍길동',
    // addr: '용산구',
    age: 55,
    kind: 'G',
};
let arr;
let xarr = Math.random() > 0.5 ? 'x' : [123];
// xarr = Math.random() > 0.5 ? [1, 2, 3] : 123;
// if (Array.isArray(xarr) && typeof xarr[0] === 'number') arr = xarr;
if (Array.isArray(xarr))
    arr = xarr;
let gildong = Math.random() > 0.5 && 'HongGilDong';
gildong = '';
if (gildong) {
    gildong.toUpperCase(); // string
}
else {
    gildong; // false | string
}

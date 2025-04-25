"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
function add(a, b) {
    return a + b;
}
const s = 'abc';
const add2 = (a, b) => a + b;
const add3 = (a, b) => a + b;
const introduce = (name, height) => {
    console.log(`이름 : ${name}`);
    // if (height) console.log(`키 : ${height + 10}`);
    // if (height && height > 0) console.log(`키 : ${height + 10}`);
    if (typeof height === 'number')
        console.log(`키 : ${height + 10}`);
    // console.log(`키 : ${(height ?? 0) + 10}`);
};
introduce('김현준'); // OK
introduce('김현준', undefined); // OK
introduce('김현준', 0); // OK
introduce('김현준', 170); // OK
// ----------------------------------
const introduce2 = (name, height) => {
    console.log(`이름 : ${name}`);
    if (typeof height === 'number') {
        console.log(`키 : ${height + 10}`);
    }
};
introduce2('김현준', 0);
introduce2('김현준', undefined); // OK
introduce2('김현준', 170); // OK
// -----------------------------------
const introduce4 = (name, height = 0) => {
    console.log(`이름 : ${name}`);
    console.log(`키 : ${height + 10}`);
    //  console.log(`키 : ${(height ?? 0) + 10}`);
};
introduce4('김현준4'); // OK
introduce4('김현준4', undefined);
introduce4('김현준4', 170);
// introduce4("김현준", "이재현");
//Error: Argument of type 'string' is not assignable to parameter of type 'number'.
function factorial(n) {
    if (n <= 1)
        return 1;
    return n * factorial(n - 1);
}
const afactorial = (n) => {
    if (n <= 1)
        return 1;
    return n * afactorial(n - 1);
};
const af = (n) => (n <= 1 ? n : n * af(n - 1));
let singer;
singer = function (song) {
    // song : string의 타입
    return `Singing : ${typeof song === 'string' && song.toUpperCase()}!`; // OK
};
const arr3 = [1, 2, 3, '4', 's'];
console.log(arr3.map((a, i) => '' + a + i));
console.log(arr3.map((a, i) => Number(a) + i));
function ff(params) {
    console.log('ff');
}
const rf1 = ff(1);
const f5 = () => { };
const f6 = (n) => { };
const obj = {};
function tfn(x) {
    console.log('tfn>>', this.id, x);
}
function ntfn(x) {
    console.log('ntfn>>', x);
}
tfn.bind({ id: 1 })('X');
ntfn('Y');
let u = { id: 1 };
u = {
    toString() {
        return '1';
    },
};
u = [];
u = function () { };
let u2;
u2 = {
    toString() {
        return 1;
    },
};
u2 = u;
let u3;
u2 = {};
const t = setTimeout(console.log, 1000, '1');
const a = [1, 2, 3];
a[100]?.toFixed(); //noUncheckedIndexedAccess
const b = [4, 5, '6'];
const c = [...a, ...b];
// interface OrgA {
//   name: string;
// }
// interface A extends OrgA{
//   age: number;
// }
const yarr = [];
const zarr = [];
class AA {
    name = 'abc';
    age = 0;
}
const onlyA = [
    { name: 'lim', age: 10 },
    { name: 'hong', age: 20 },
];
const onlyB = [
    { name: 'jang', addr: 'Seoul' },
    { name: 'park', addr: 'Busan' },
];
const aOrB = [...onlyA, ...onlyB];
// (A|B)[]
const abobj = {
    name: 'Tan',
    age: 30,
    addr: 'Incheon',
    x: 1,
};
let abx = abobj;
aOrB.push(abobj);
aOrB.push({ name: 'X', age: 20, addr: 'xx' });
const sym1 = Symbol('s1');
let isobj1 = { id: '1', name: 'Hong', 3: 5, [sym1]: false };
let isobj2 = { 3: 5, id: 3, 5: 55 };
{
    const blockA = { name: 'Hong', addr: 'Pusan' };
    console.log('🚀 blockA:', blockA);
}
const outerA = { name: 'Kim', age: 33 };
function tuple() {
    const a = [1, 'lim', false];
    let b = [a[0], a[1]];
    console.log('🚀 b:', b);
}
tuple();
const greeting = (greet, name, age) => {
    console.log(`${greet}~ ${name}, You are ${age}.`);
    return [name, age];
    // return [name, age];
};
const gr1 = greeting('Hi', 'Hong', 33);
console.log('🚀 gr1:', gr1[1]);
const tup = ['Kim', 55];
greeting('Hello', ...tup);
const ary = ['Park', 44];
// greeting('Hello', ary[0], ary[1]);
// greeting('Hello', ...ary);
const greeting2 = (greet, name, age) => {
    console.log(`${greet}~ ${name}, You are ${age}.`);
    return [name, age];
    // return [name, age];
};
const gr2 = greeting2('Hi', 'Hong', 33);
// gr2[1] = 'zzz';
const gr3 = [gr2[0], 'zzz'];
console.log('🚀 gr2:', gr2[1], gr3);
// ----------------------
const arr = [1, 2, 3];
const arr2 = [4, 5, 6];
const arr22 = [4, 5, 6];
console.log('🚀 arr22:', arr22);

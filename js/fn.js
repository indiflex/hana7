globalThis.name = 'GlobalName';
this.name = 'ModuleName';

function f() {
  console.log('f.this=', this.name);
}
f();

const self = this;
const af = () => {
  console.log('af.this=', self.name, this.name, globalThis.name);
};
af();

let obj = {
  name: 'ObjName',
  bark() {
    // good!(호출한 객체)
    console.log('bark=', this.name);
  },
  bark2: () =>
    // bad!! ==> this=전역(browser)/module(node)
    console.log('bark2=', this.name, self.name),
};
console.log('QQQQ>>', obj.toString());
// console.log('QQQQ>>', obj instanceof Object);
// console.log('QQQQ>>', af instanceof Function);
const o1 = Object.assign({}, obj);
const o2 = Object.create(obj);
Object.prototype.xxx = 'XXX';
console.log('🚀 o1:', o1, o1.toString(), o1.xxx);
console.log('🚀 o2:', o2, o2.name, o2.xxx);
Array.prototype.xxx = function () {
  return this.length ** 2;
};

const arr = [1, 2, 3];
console.log('🚀 arr:', arr.length, arr.xxx());
Array.prototype.firstObject = function () {
  return this[0];
};
const fo = arr.firstObject();
console.log('🚀 fo:', fo);

obj.bark();
obj.bark2();
const ob = obj.bark;
obj = null;
ob();

console.log(' - - - - - - - - - - - - - - ');

const hongx = { id: 1, name: 'Hong' };
const expressFn = function (name) {
  // 'use strict';
  // if(this?.name)
  // this.name = name;
  console.log('efn -->', this.name, name, this instanceof expressFn);
};

const arrowFn = name => {
  // this.name = name;
  console.log('afn -->', this, this.name, name);
};

const kimx = { id: 2, name: 'Kim' };

// expressFn('expfn');
const y = expressFn.bind(hongx);
y('expfn');

expressFn.call(hongx, 'expfn');
expressFn.apply(hongx, ['expfn']);
// arrowFn.bind(kim)('afn');
arrowFn.apply(kimx, ['afn']);

return;

// class Dog {
//   constructor(nm) {
//     console.log('🚀 nm:', nm)
//   }
// }

// const maxx = new Dog('Maxx');

const dfn = new expressFn('D');
console.log('🚀 dfn:', Object.getPrototypeOf(dfn));
// const afn = new arrowFn('A'); // error!

console.log('-------------------------------');
const Dog = function (name) {
  console.log(name, '==>', this.name, new.target, this instanceof Dog);
  this.name = name;
  this.bark = function () {
    console.log('bark=', new.target, this.name, name);
  };
  this.bark2 = () => console.log('bark2=', new.target, this.name, name);
};

const dog = Dog('Doggy');
const lucy = new Dog('Lucy');
// Dog.bark(); // ?
lucy.bark(); // ?
lucy.bark2(); // ?
console.log('dog type=', typeof dog); // ?
console.log('lucy type=', typeof lucy); // ?

console.log('****************************');
this.name = 'Module Name';
globalThis.name = 'GlobalName';
const Cat = name => {
  console.log('Cat>>', this);
  this.name = name;

  this.bark = function () {
    console.log('bark=', new.target, this.name, name);
  };

  this.bark2 = () => console.log('bark2=', this.name, name);

  return this;
};

const cat = Cat('Coco');
// const cat = new Cat(''); // error!!
cat.bark(); // ?
// cat.bark2(); // ?
// Cat().bark(); // ?
// console.log('type=', typeof cat); // ?

// cf. FunctionEnvironmentRecord.[[ThisValue]]

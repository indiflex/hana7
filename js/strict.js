'use strict';
var x;
function f(a, aa) {
  console.log('new.target>>', new.target, arguments);
  console.log('outer f', a, x, this?.id);
  // const fff = () => a;
  function ff() {
    return a;
  }
  return ff;
}
const xxx = f(10000);
xxx();

// function xf() {}
let xf = () => {};
xf = a => a ** 2;
xf(3);

console.log(this === globalThis);

// f = 1;
// NaN = 1;
// Infinity = 0;
// delete f; // error
{
  function f(a) {
    console.log('block f', a);
  }
  const c = 1;
  var v = 0;
}
const u = { id: 1 };
f.bind(u)(200);
const bf = f.bind({ id: 300 });

bf(1);
bf(2);
new f(300);
console.log('v=', v);

f.apply({ id: 500 }, 5);

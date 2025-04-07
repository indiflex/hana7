// var x;
// var y;
// var zz;
// function add(a, b) {
//   var c;
//   return a + b + c;
//   c = 9;
// }

// x = 100;
// y = 200;

// // ---------------------------
// zz = add(1, 2);
// // let zz = <notInitializeYet>; // fresshness
// console.log('11=', zz);
// // ReferenceError: zz is not defined

// zz = 9; // 이 라인 실행 시 암묵적 var!
// console.log('22=', zz); // OK
// console.log(globalThis['zz']);

// console.log('=====================)
// console.log(i); // error
let i = 1;
console.log('x=', x);
var x = 1;
var y;
console.log(ff, f);
// f(); // error
{
  function f() {
    console.log('f>', x, xx);
  }
  f();
  var x = 2;
  const b = 1;
}
function ff() {
  console.log('ff11>', y, yy);
}
if (x >= 2) {
  var yy;
  var y = 5;
  yy = 55;
  console.log('ff22>', y, yy);
}
var xx = 100;
ff();

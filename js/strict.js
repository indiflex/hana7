'use strict';
function f(a, aa) {
  console.log('outer f', a);
}

// f = 1;
// NaN = 1;
// Infinity = 0;
// delete f; // error
{
  function f(a) {
    console.log('block f', a);
  }
  f(100);
}
f(200);

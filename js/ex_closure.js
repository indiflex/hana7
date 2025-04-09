const assert = require('assert');

// [1,2,3,4,5,6,7, 8, 9, 10]
function makeArray(n) {
  if (n === 1) return [1];
  return [...makeArray(n - 1), n];
}
function makeReverseArray(n) {
  if (n === 1) return [1];
  return [n, ...makeReverseArray(n - 1)];
}

const ma10 = makeArray(10);
console.log('🚀 ma10:', ma10);
assert.deepEqual(ma10, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
assert.equal(ma10[0], '1');
assert.strictEqual(ma10[0], 1);

const mra5 = makeReverseArray(5);
// console.log('🚀 mra5:', mra5);
assert.deepEqual(mra5, [5, 4, 3, 2, 1], 'reverse fail!!');

const maTco10 = makeArrayTCO(10);
console.log('🚀 maTco10:', maTco10);

function makeArrayTCO(n, acc = []) {
  if (n === 1) return [1, ...acc];

  return makeArrayTCO(n - 1, [n, ...acc]);
}

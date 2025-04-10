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
console.log('-------------------');

function loopFibonacci(n) {
  if (n <= 1) return n;
  let prev = 0;
  let curr = 1;
  for (let i = 2; i <= n; i += 1) {
    // let t = prev;
    // prev = curr;
    // curr = t + curr;
    [prev, curr] = [curr, prev + curr];
  }

  return curr;
}

function recurFibonacci(n) {
  if (n <= 1) return n;
  return recurFibonacci(n - 2) + recurFibonacci(n - 1);
}

const memoFibonacci = memoized(function (n) {
  if (n <= 1) return n;
  return memoFibonacci(n - 2) + memoFibonacci(n - 1);
});

const lf3 = loopFibonacci(3);
console.log('🚀 lf3:', lf3);
const lf5 = loopFibonacci(5); // 5
console.log('🚀 lf5:', lf5);
const lf7 = loopFibonacci(7); // 13
console.log('🚀 lf7:', lf7);
console.log('---------------- recursive');
assert.equal(recurFibonacci(3), 2);
assert.equal(recurFibonacci(5), 5);
assert.equal(recurFibonacci(7), 13);
assert.equal(recurFibonacci(30), 832040);

assert.equal(memoFibonacci(5), 5);
assert.equal(memoFibonacci(7), 13);
assert.equal(memoFibonacci(30), 832040);

function memoized(fn) {
  const cache = {};
  return function (k) {
    return cache[k] || (cache[k] = fn(k));
  };
}

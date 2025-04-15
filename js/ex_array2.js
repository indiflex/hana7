const assert = require('assert');

const hong = { id: 1, name: 'Hong' };
const choi = { id: 5, name: 'Choi' };
const kim = { id: 2, name: 'kim' };
const lee = { id: 3, name: 'Lee' };
const park = { id: 4, name: 'Park' };
const users = [kim, lee, park]; // 오염되면 안됨!!

const addUser = user => [...users, user];
assert.deepStrictEqual(addUser(hong), [kim, lee, park, hong]);
assert.deepStrictEqual(users, [kim, lee, park]);

// const removeUser = user => users.filter((u) => u.id !== user.id);
// const removeUser = user => users.filter(({id}) => id !== user.id);
const removeUser = ({ id: pid }) => users.filter(({ id }) => id !== pid);
assert.deepStrictEqual(removeUser(lee), [kim, park]);
assert.deepStrictEqual(users, [kim, lee, park]);

const changeUser1 = ({ id: fromId }, to) =>
  users.map(user => (user.id === fromId ? to : user));

const changeUser = (from, to) =>
  users.map(user => (user.id === from.id ? to : user));

assert.deepStrictEqual(changeUser(kim, choi), [choi, lee, park]);
assert.deepStrictEqual(users, [kim, lee, park]);

// -------------------------------
const reduce = (arr, fn, initValue) => {
  let i = 0;
  let acc = initValue ?? (i++, arr[0]);
  for (; i < arr.length; i++) {
    acc = fn(acc, arr[i], i, arr);
  }
  return acc;
};

const a10 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
assert.deepStrictEqual(
  reduce(a10, (acc, cur) => acc + cur),
  a10.reduce((acc, cur) => acc + cur, 0)
);

assert.deepStrictEqual(
  reduce(users, (acc, user) => acc + user.name),
  users.reduce((acc, user) => acc + user.name)
);

assert.deepStrictEqual(
  reduce(a10, (acc, cur) => acc + cur, 0),
  a10.reduce((acc, cur) => acc + cur, 0)
);
assert.deepStrictEqual(
  reduce(a10, (acc, cur) => acc + cur),
  a10.reduce((acc, cur) => acc + cur)
);
assert.deepStrictEqual(
  reduce([1, 2, 3, 4, 5], (a, b) => a * b, 1),
  [1, 2, 3, 4, 5].reduce((a, b) => a * b, 1)
);

assert.deepStrictEqual(
  reduce(users, (acc, user) => acc + user.name),
  users.reduce((acc, user) => acc + user.name)
);

// --------------------------------
const arr = [1, 2, 3, 4, 5];

const square = n => n ** 2;
const cube = n => n ** 3;
const sqrt = Math.sqrt;

const xr1 = arr.map(square).map(sqrt).map(cube);
assert.deepStrictEqual(xr1, [1, 8, 27, 64, 125]);

const xr2 = arr.map(a => [square, sqrt, cube].reduce((acc, fn) => fn(acc), a));
console.log('🚀  xr2:', xr2);
const xr3 = arr.map(a => [cube, square, sqrt].reduce((acc, fn) => fn(acc), a));
console.log('🚀  xr3:', xr3);
const xr4 = arr.map(a =>
  [square, cube, n => n + 1].reduce((acc, fn) => fn(acc), a)
);
console.log('🚀  xr4:', xr4);

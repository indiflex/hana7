const promi = new Promise((resolve, reject) => {
  setTimeout(() => {
    const now = Date.now();
    if (now % 2 === 0) resolve(console.log('fulfill', now));
    else reject(new Error('어디로?'));
  }, 1000);
});

console.log(promi);

promi
  // .then(
  //   succ => console.log('Resolve!', succ, promi),
  //   err => console.log('Reject!', err, promi)
  // )
  .then(() => 123)
  .then(x => console.log('x=', x));

const x = 1;
let y;
Promise.resolve(x).then(ret => console.log('ret=', ret));
console.log('login');
Promise.resolve(x).then(ret => console.log('ret=', ret));

// const log = x => Promise.resolve(xxx);
// set(prop, val) {
//   log(prop);
//   this[prop] = val;
// }

// x = b ? promi : Promise.resolve(y);
// x.then(ret => z = ret + y)
//         vs
// x = b ? promi : y;
// if (x instanceof Promise)
//   x.then(ret => z = x + y)
// else
//   z = x + y;

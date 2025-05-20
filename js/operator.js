const n = 1;
const b = true;
const nb = n + b;
console.log('🚀 nb:', nb);

const nil = null;
// const nil = [];
const n_nil = n + nil;
console.log('🚀 n_nil:', n_nil);

const undef = undefined;
const n_undef = n + undef;
console.log('🚀 n_undef:', n_undef);
console.log("+'' =", +'');
console.log('+undefined =', +undefined);

console.log('======================');
let x = 5;
console.log(3 - -x); // 3 - (-5)
console.log(10 + -x * 2); // ? →
console.log(-10 * -x * -2); // ? →
console.log((-10 / -x) * -2); // -1 or -4 →
console.log(2 ** (3 ** 2)); // 64(82) or 512(29) ?
console.log(2 ** (3 ** 2)); // 64(82) or 512(29) ?
// const xxx = (x = x + 1);
// const xxx = (x += 1);
// const xxx = x++; // xxx = x; x += 1;
const xxx = ++x; // x += 1; xxx = x;
// for (let i = 0; i < 5; i += 1) {}
console.log('🚀 xxx:', xxx);
// console.log(x, x++, x, ++x); // x = x + 1
console.log('----------------');
let aa = 1;
let bb = 2;
let cc = (aa++, bb++); // aa += 1; cc = bb; bb += 1;
let dd = (aa--, bb + aa);
console.log(aa, bb, cc, dd);

switch (dd) {
  case 1:
    console.log('one');
    break;
  case 3:
  case 4:
  case 5:
  case 6:
  case 7: {
    const xxxx = 1;
    console.log('four', xxxx);
  }
  case 80:
    console.log('five');
  default:
    console.log('****');
}

const i = 0;
if (i > 10) console.log('********');
else console.log(i);

console.log('====================');

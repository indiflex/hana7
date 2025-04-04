const n = 123; // 8B
const bi = 123n; // 16B

const n___bi = n === bi;
console.log('🚀 n___bi:', n___bi);

const n__bi = n == bi;
console.log('🚀 n__bi:', n__bi);

// const nAddbi = n + Number(bi); // x
const nAddbi = BigInt(n) + bi;
console.log('🚀 nAddbi:', nAddbi, typeof nAddbi);

const s = 'abc';
const ss = new String('abc');
const s__ss = s == ss;
console.log('🚀 s__ss:', s__ss, typeof s);
const s___ss = s === ss;
console.log('🚀 s___ss:', s___ss, typeof ss);
const sNum = Number(s);
console.log('🚀 sNum:', sNum);
const ssNumber = Number(ss);
console.log('🚀 ssNumber:', ssNumber);
console.log('Number(s) == Number(ss)', Number(s) == Number(ss), isNaN(sNum));

// 'abc' + '123' ==> 'abc123'
const sss = `${s} - ${n + Number(bi)}`;
// ==> s + ' - ' + (n + Number(bi))
console.log('🚀 sss:', sss);

console.log('--------------------');
const s1 = Symbol('foo');
const s2 = Symbol('foo');
const s1__s2 = s1 == s2;
console.log('🚀 s1__s2:', s1__s2);

const seoulHong = Symbol.for('H');
const pusanHong = Symbol.for('H');
const s__p = seoulHong == pusanHong;
console.log('🚀 s__p:', s__p);

const undef = undefined;
const nil = null;
const undef__nil = undef == nil;
const undef___nil = undef === nil;
console.log('🚀 undef__nil:', undef__nil);
console.log('🚀 undef___nil:', undef___nil);

const hong = { id: 1, name: 'Hong' };

const m = new Map();
m.set(1, 100);
m.set(2, 200);
m.set(hong, hong.name);
m.set(2, 222);
m.set('3', undefined);

m.delete(1);
console.log('🚀 m:', m, m.has('3'), m.get(2));
const ms = [...m]; // entries
console.log('🚀 ms:', ms);
const keys = m.keys();
console.log('🚀 keys:', keys);

const set1 = new Set([1, 2, '3']);
set1.add(4);
set1.add(hong);
console.log('🚀 s:', set1, set1.has(hong), [...set1]);

function f(x) {
  set1.add(x);
  const y = 1;
  set1.add(y);
}
f(100);
console.log('🚀 set1:', set1);
console.log('---------------------------');
const ws = new WeakSet();
const s = new Set();
const obj3 = { id: 1 };
ws.add(obj3);
s.add(obj3);
{
  let obj1 = { id: 1 }; // &100
  const obj2 = { id: 2 };
  ws.add(obj1); // "&100"
  s.add(obj1); // &100

  ws.add(obj2);
  s.add(obj2);

  obj1 = null; // obj1 주소 변경 (&null)
  console.log(ws, ws.has(obj1));
  console.log(s, s.has(obj1));
}

console.log(s.size, ws.size);
console.log('ws>', ws, ws.has(obj3));
console.log('s>>', s, s.has(obj3));

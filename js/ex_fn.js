globalThis.name = 'GlobalName';
this.name = 'ModuleName';

const dog = {
  name: 'Maxx',
  showMyName() {
    console.log(`My name is ${this.name}.`);
  },
  whatsYourName() {
    setTimeout(this.showMyName.bind(this), 1000); // (1)
    setTimeout(() => this.showMyName(), 1500); // (2)
    // const timer = setTimeout(this.showMyName, 1000);
    // timer.name = 'TTTT';
    // console.log('🚀 timer:', timer);
  },
};

// dog.whatsYourName();

// const weeks = ['일', '월', '화', '수', '목', '금', '토'];

// closure
// const weekName = () => weekNo => weeks[weekNo];
function weekNameX() {
  return function (weekNo) {
    const weeks = ['일', '월', '화', '수', '목', '금', '토'];
    return weeks[weekNo];
  };
}

const weekName = () => weekNo => {
  const weeks = ['일', '월', '화', '수', '목', '금', '토'];
  return weeks[weekNo];
};

const getWeekName = weekName();

// const getWeekName = function (weekNo) {
//   weeks[weekNo] = 555;
//   return `${weeks[weekNo]}요일`;
// };

// const f = () => () => {}
// const d = (cb, delay) => (...args) => {}
const debounce = (cb, delay) => {
  let timer;
  return (...args) => {
    if (timer) clearTimeout(timer);
    timer = setTimeout(cb, delay, ...args);
  };
};

const throttle = (cb, delay) => {
  let timer;
  return (...args) => {
    if (timer) return;
    timer = setTimeout(cb, delay, ...args);
    timer = null;
  };
};

Array.prototype.mapx = function (f) {
  const results = [];
  for (let i = 0; i < this.length; i++) {
    results[i] = parseInt(this[i], i, this);
  }
  return results;
};

const farr = [1, 2, 3, 4];
const rets = farr.mapx((a, i) => console.log(a, i, a * i));
console.log('🚀 rets:', rets);

const roots = farr.map(Math.sqrt);
console.log('🚀 roots:', roots);

function add(a, b, c) {
  return a + 10;
}
console.log(';;', add(1, 2, 3, 4));

// const unary = f => (f.length === 1 ? f : (...args) => f(args[0]));
const unary = f => (f.length === 1 ? f : arg => f(arg));

const sarr = ['11', '22', '33', '44', '55'];
const sresults = sarr.map(parseInt);
console.log('🚀 sresults:', sresults);
const sresults2 = sarr.map(unary(parseInt));
console.log('🚀 sresults2:', sresults2);

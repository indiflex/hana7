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

const day = new Date().getDay();
console.log(`오늘은 ${getWeekName(day)}입니다!`);

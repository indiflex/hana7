const DC_RATE = 0.5;
// const DcRate = 0.5;

function discount() {
  const dcRate = 0.5;
  return function (price) {
    return price * dcRate;
  };
}

const discount2 = () => price => price * DC_RATE;
// const Button = (mode) => () => <Button mode={mode} />
// const darkButton = Button('dark');
// darkButton('Save');
// darkButton('Cancel');

// curring
const MENU = { chinese: ['자장면', '탕수육'], italian: ['pizza', 'pasta'] };
function restaurant(kind) {
  const menu = MENU[kind];
  return function (menuIndex) {
    return menu[menuIndex]; // menu.['chinese']
  };
}

const lunch = restaurant('chinese');
console.log(lunch(1));

const dinner = restaurant('italian');
console.log(dinner(0), dinner(1));

// 출입자 수를 게이트 별로 구하는 함수를 작성하세요.

function getCounter() {
  let currCount = 0;
}

const gate1 = getCounter();
const gate2 = getCounter();

gate1.plus();
gate2.plus();
gate2.minus();

console.log('gate1>>', gate1.count());
console.log('gate2>>', gate2.count());

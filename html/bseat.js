const students = [
  '김기연',
  '김보겸',
  '김시영',
  '김재윤',
  '노유민',
  '노찬영',
  '문영균',
  '송채영',
  '우재현',
  '윤서연',
  '이건희',
  '이서우',
  '이지민',
  '임소민',
  '임아현',
  '정소은',
  '최수빈',
  '허건',
];
const inps = document.getElementsByTagName('input');
console.log('***********', inps);

// const seats = [...inps].filter(inp => !inp.value);
// console.log('🚀  seats:', seats);
// for (let i = 0; i < students.length; i++) seats[i].value = students[i];

function set(student) {
  const seats = [...inps].filter(inp => !inp.value);
  // console.log('🚀  seats:', seats.length);
  const seat = Math.floor(Math.random() * seats.length);
  // console.log('🚀  seat:', seat);
  seats[seat].value = student;
}

function start() {
  let idx = 0;
  const intl = setInterval(() => {
    set(students[idx++]);
    if (idx >= students.length) clearInterval(intl);
  }, 1000);
}

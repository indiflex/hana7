const leaders = ['윤서연', '노유민', '이지민'];
const students = [
  '김기연',
  '김보겸',
  '김시영',
  '김재윤',
  '노찬영',
  '문영균',
  '송채영',
  '우재현',
  '이건희',
  '임소민',
  '임아현',
  '정소은',
  '최수빈',
  '허건',
];
const setStudents = [];
const inpLeaders = document.getElementsByClassName('border-danger');
const inps = [
  document.getElementsByClassName('border-primary'),
  document.getElementsByClassName('border-warning'),
  document.getElementsByClassName('border-success'),
];

const $members = document.getElementById('members');
students.forEach(s => {
  const $btn = document.createElement('button');
  $btn.textContent = s;
  $btn.classList = 'btn btn-primary m-1';
  $btn.onclick = () => {
    setMember(s);
    $members.removeChild($btn);
  };
  $members.appendChild($btn);
});

let teamIdx = 0;
let inc = 1;
function setMember(student) {
  const inputs = inps[teamIdx];
  const seats = [...inputs].filter(inp => !inp.value);
  seats[0].value = student;

  if (teamIdx === 2) {
    teamIdx = inc === -1 ? 1 : 2;
    inc = -1;
  } else if (teamIdx === 0) {
    teamIdx = inc === 1 ? 1 : 0;
    inc = 1;
  } else {
    teamIdx += inc;
  }
}

function setLeader(student) {
  const seats = [...inpLeaders].filter(inp => !inp.value);
  const seat = Math.floor(Math.random() * seats.length);
  seats[seat].value = student;
  setStudents.push(student);
}

function start() {
  let idx = 0;
  const intl = setInterval(() => {
    const sts = leaders.filter(s => !setStudents.includes(s));
    if (!sts?.length) return clearInterval(intl);
    idx = Math.floor(sts.length * Math.random());
    setLeader(sts[idx]);
  }, 1000);
}

console.log('Hello, JavaScript!');

const 내이름 = 'Sico';

function printName(nm) {
  console.log(1, nm);

  const myName = 'Hanaro';
  {
    const myName = 'True';
    console.log(22, myName);
  }
  console.log(2, myName, typeof myName);
}
printName(내이름);
console.log(3, 내이름);

console.log('---------------', typeof 123);

interface IUser {
  id: number;
  age: number;
  name: string;
}

interface IDept {
  id: number;
  age: string;
  dname: string;
  captain: string;
}

type Combine<T, U> = < 이 부분을 작성하세요 >;

type ICombined = Combine<IUser, IDept>;


let combineX: ICombined = {
  id: 0,
  age: 33,
  name: 'aaa',
  dname: 'bbb',
  captain: 'ccc'
}
let combineY: ICombined = {
  id: 0,
  age: '33세',
  name: 'aaa',
  dname: 'bbb',
  captain: 'ccc'
}

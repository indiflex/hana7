const isStringNumber = (value: unknown): value is [string, number] =>
  Array.isArray(value) &&
  // value.length >= 2 &&
  typeof value[0] === 'string' &&
  typeof value[1] === 'number';

const f1 = (value: number | string | boolean | [string, number]) => {
  if (isStringNumber(value)) {
    console.log(value[0].toUpperCase(), value[1].toFixed());
  }
};

f1(['item', 1000]);

interface Animal {}
interface Dog extends Animal {
  name: string;
}
interface Cat extends Animal {
  punch(): void;
}
class Retriever implements Dog {
  constructor(public name: string) {}
}

function isDog(a: Animal): a is Dog {
  return 'name' in a && typeof a.name === 'string';
}

const maxx: Dog = { name: 'Maxx' };
if (isDog(maxx)) console.log(maxx.name, 'is Dog!');

const gunhee = new Retriever('Gunhee');
if (isDog(gunhee)) console.log(gunhee.name, 'is Dog!');

// ---------------------------
const constCart = {
  X: 1,
  Y: 2,
  Z: 3,
} as const;

type T3 = 1 | 2 | 3;
type ConstCart = typeof constCart;
// type T4 = typeof constCart[keyof typeof constCart];
type T4 = ConstCart[keyof ConstCart];

const xCart = { x: 1, y: 'str' } as const;
type XCart = typeof xCart;
type T5 = XCart[keyof XCart];

type ValueOf<T> = T[keyof T];
type T44 = ValueOf<typeof constCart>;
type T55 = ValueOf<typeof xCart>;

interface IErrorWithMessage {
  message: string;
}

const isErrorWithMessage = (error: unknown): error is IErrorWithMessage =>
  typeof error === 'object' &&
  error !== null &&
  'message' in error &&
  typeof error.message === 'string';
// (error as Record<string, unknown>).message === 'string'

const toErrorWithMessage = (error: unknown) =>
  isErrorWithMessage(error) ? error : new Error(JSON.stringify(error));

try {
  // throw new Error('some error!!!!');   // 가
  // throw 'some string error!!!';        // 나
  throw ['some', 'array', 'error']; // 다
} catch (error) {
  console.log(toErrorWithMessage(error).message); // (라)
}

// -----------------------------------
type TPropertyKeyType = string | number | symbol;
type TUser = { [key: string]: string | number };

function deleteArray(
  arr: TUser[] | number[],
  startOrKey: TPropertyKeyType,
  endOrValue?: unknown
) {
  if (typeof startOrKey === 'number') {
    if (typeof endOrValue === 'number') {
      return arr.filter((_, i) => i < startOrKey || i > endOrValue - 1);
    }
    return arr.slice(0, startOrKey);
  }

  if (typeof startOrKey === 'string') {
    console.log('🚀 startOrKey:', startOrKey);
    return arr.filter(e => {
      if (e && typeof e === 'object') {
        return e[startOrKey] !== endOrValue;
      }
    });
  }

  if (typeof startOrKey === 'symbol') {
  }

  return [];
}

const arr = [1, 2, 3, 4];
console.log(deleteArray(arr, 2)); // [1, 2]
console.log(deleteArray(arr, 1, 3)); // [1, 4]
console.log(arr); // [1, 2, 3, 4]

const users = [
  { id: 1, name: 'Hong' },
  { id: 2, name: 'Kim' },
  { id: 3, name: 'Lee' },
];

console.log(deleteArray(users, 2)); // [Hong, Kim]
console.log(deleteArray(users, 1, 2)); // [Hong, Lee]
console.log(deleteArray(users, 'id', 2)); // [Hong, Lee]
console.log(deleteArray(users, 'name', 'Lee')); // [Hong, Kim]

export {};

type S = string;
declare const myName = "Sico";
declare let age: any;
declare let lastName: string | boolean;
type Name = 'Hong' | 'Kim' | 'Lee';
declare let nm: Name;
type SomeType = {
    id: string | number;
    name: Name;
    age: 33 | 44 | 55;
    address: string;
};
declare const something: ({ id, name, age, address }: SomeType) => void;
declare const user: SomeType;
declare let x: string | undefined;
declare let y: string | number | undefined;
declare let z: string;
type Member = {
    name: string;
    addr: string;
    discountRate: number;
    kind: 'M';
};
type Guest = {
    name: string;
    age: number;
    kind: 'G';
};
type Customer = Member | Guest;
type MemberGuest = Member | Guest;
declare let cust: Member | Guest;
declare let m: {
    name: string;
    addr: string;
    discountRate: number;
};
declare let g: {
    name: string;
    age: number;
};
declare let mg: Member | Guest;
declare let arr: number[];
declare let xarr: string | number[];
declare let gildong: string | false;

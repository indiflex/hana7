type Xid = { id: number };
type Xname = { name: string } & Xid;
type Xage = { age: number } & Xid;
type X = Xname | Xage;
type Y = Xname & Xage;
type Z = string & number;

type P = Xid | (Xname & Xage);
type Q = Xid & (Xname | Xage);

let xx: X = { id: 1, name: 'Hong' };
xx = { id: 2, age: 33 };

let yy: Y = { id: 11, name: 'Hong', age: 33 };

let pp: P = {};
pp = {};
let qq: Q = {};

"use strict";
class WithMethod {
    myMethod() { }
}
const isSame = new WithMethod().myMethod === new WithMethod().myMethod; //
console.log('🚀 isSame:', isSame);
// ---------------------------------
class WithProperty {
    myProperty; // Type 정의
}
console.log(new WithProperty().myProperty === new WithProperty().myProperty); // true??? false!
const instance = new WithProperty();
// instance.myProperty(); // OK?
class WithProperty2 {
    name;
    myProperty; // call signature
    constructor() {
        this.name = '';
        this.myProperty = () => {
            console.log('Hello, this is myProperty!');
        };
    }
}
const instance2 = new WithProperty2();
instance2.myProperty();
class Teacher {
    sayHello() {
        console.log('Take chances, make mistakes, get messy!');
    }
} // Teacher 클래스의 이름은 teacher 변수에 주석(타입정의)을 다는데 사용됨
let teacher;
// teacher 변수에는 Teacher 클래스의 자체 인스턴스처럼 Teacher 클래스에 할당할 수 있은 값만 할당해야함을 타입스크립트에 알려줌
teacher = new Teacher(); // OK
teacher.sayHello(); // OK
// teacher = 'Hello';       // Error : Type 'string' is not assignable to type 'Teacher'.
teacher = { sayHello: () => { } }; // Error
teacher = {
    sayHello() { },
}; // Is this OK?? (:구조적 타입 체킹 - 구조만 같으면 통과! Exact-matching은 freshness 체크 X)
class Student {
    name = 'aa';
    study(hours) {
        this.name = `${hours}`;
    }
}
// -----------------------------------
class Lesson {
    subject;
    constructor(subject) {
        this.subject = subject;
    }
}
class OnlineLesson extends Lesson {
    url;
    constructor(subject, url) {
        super(subject);
        this.url = url;
        this.subject = '';
    }
}
// ----------------------------------
class PastGrades {
    grades = [];
}
class LabeledPastGrades extends PastGrades {
    label; // 있으나 마나! ==> 부모와 동일구조
}
let subClass;
subClass = new LabeledPastGrades(); // OK
subClass = new PastGrades(); // OK  (: Structurally TypeChecking)
// LabeledPastGrades는 선택적 속성인 PastGrades만 추가하므로 하위 클래스 대신 기본 클래스의 인스턴스를 사용할 수 있음
class GradeTally {
    grades = [];
    addGrades(...grades) {
        this.grades.push(...grades);
        return this.grades.length;
    }
}
class ContinuedGradesTally extends GradeTally {
    constructor(previousGrades) {
        super();
        this.grades = [...previousGrades];
        //Error : 'super' must be called before accessing 'this' in the constructor of a derived class.
        //하위 클래스의 생성자는 this 또는 super에 접근하기 전에 반드시 기본 클래스의 생성자를 호출해야함!
        //super()를 호출하기 전에 this 또는 super에 접근하려고 하는 경우 타입 오류를 보고함
        console.log('Starting with length', this.grades.length);
    }
}
// --------------------------------
class Assignment {
    grade; // 기본 클래스에서 number | undefined로 선언
}
class GradedAssignment extends Assignment {
    grade;
    // 하위 클래스에서 grade를 필수(항상 존재하는) number 타입으로 선언
    constructor(grade) {
        super();
        this.grade = grade;
    }
}
//--------------
class Animal {
    name;
    mouse;
    constructor(name, mouse = 'x') {
        this.name = name;
        this.mouse = mouse;
        this.mouse = mouse;
    }
    feed(food) {
        this.mouse = food;
        console.log(food, 'feed to', this.name);
        return this;
    }
    print(age) {
        console.log('Animal Name is', this.name, age);
    }
}
class Dog extends Animal {
    print() {
        console.log('Dog Name is', this.name);
    }
}
class Cat extends Animal {
    print() {
        console.log(this.constructor.name, 'Name is', this.name);
    }
}
console.log('---------------------------');
const maxx = new Dog('Maxx');
const navee = new Cat('Navee');
let animal = maxx;
animal.feed('banana').print(12);
let jake = new Dog('Jake');
jake.feed('apple').print();
// jake = 123 as unknown as Dog;
animal = navee;
animal.feed('fish').print(123);
// ------------------------------
const isString = (value) => typeof value === 'string';
const f1 = (value) => {
    if (isString(value)) {
        console.log(value.toUpperCase());
    }
};

declare class WithMethod {
    myMethod(): void;
}
declare const isSame: boolean;
declare class WithProperty {
    myProperty: () => void;
}
declare const instance: WithProperty;
declare class WithProperty2 {
    name: string;
    myProperty: () => void;
    constructor();
}
declare const instance2: WithProperty2;
declare class Teacher {
    sayHello(): void;
}
declare let teacher: Teacher;
interface Learner {
    name: string | number;
    study(hours: number): void;
}
declare class Student implements Learner {
    name: string;
    study(hours: number): void;
}
declare class Lesson {
    subject: string;
    constructor(subject: string);
}
declare class OnlineLesson extends Lesson {
    url: string;
    constructor(subject: string, url: string);
}
declare class PastGrades {
    grades: number[];
}
declare class LabeledPastGrades extends PastGrades {
    label?: string;
}
declare let subClass: LabeledPastGrades;
declare class GradeTally {
    grades: number[];
    addGrades(...grades: number[]): number;
}
declare class ContinuedGradesTally extends GradeTally {
    constructor(previousGrades: number[]);
}
declare class Assignment {
    grade: number | string;
}
declare class GradedAssignment extends Assignment {
    grade: number | string;
    constructor(grade: number);
}
declare class Animal {
    name: string;
    mouse: string;
    constructor(name: string, mouse?: string);
    feed(food: string): this;
    print(age: number): void;
}
declare class Dog extends Animal {
    print(): void;
}
declare class Cat extends Animal {
    print(): void;
}
declare const maxx: Dog;
declare const navee: Cat;
declare let animal: Animal;
declare let jake: Dog;
declare const isString: (value: unknown) => value is string;
declare const f1: (value: number | string | boolean | [string, number]) => void;

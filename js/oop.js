class Animal {
  static ID = 1;
}

class Dog extends Animal {
  f() {
    return this.ID;
  }
  static sf() {
    return this.ID;
  }
}

const ani = new Animal();
const aid = ani.ID;
console.log('🚀 aid:', aid);

const dog = new Dog();
console.log('🚀 dog:', dog.f(), Dog.sf());

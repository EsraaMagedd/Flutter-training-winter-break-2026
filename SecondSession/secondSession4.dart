//abstract class
abstract class Animal {
  void sound() {
    print("The animal makes a sound");
  }

  //abstract method
  void makeSound();
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof! Woof!");
  }
}

class Cat implements Animal {
  @override
  void sound() {
    print("The cat makes a sound");
  }

  @override
  void makeSound() {
    print("Meow! Meow!");
  }
}

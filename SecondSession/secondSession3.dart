//superclass
class Animal {
  String name;
  String species;
  String color;

  Animal(this.name, this.species, this.color);

  void speak() {
    print("The animal makes a sound");
  }
}

//subclass
class Dog extends Animal {
  String breed;

  Dog(String name, String species, String color, this.breed)
      : super(name, species, color);

  @override
  void speak() {
    print("Woof! Woof!");
  }

  void bark() {
    print("Dog is barking!");
  }
}

class Cat extends Animal {
  String breed;

  Cat(String name, String species, String color, this.breed)
      : super(name, species, color);

  @override
  void speak() {
    print("Meow! Meow!");
  }
}

class SpecialCat extends Cat {
  String specialFeature;

  SpecialCat(String name, String species, String color, String breed, this.specialFeature)
      : super(name, species, color, breed);

  @override
  void speak() {
    print("Special meow sound");
  }
}

void main() {
  Dog myDog = Dog("Buddy", "Canine", "Brown", "Labrador");
  myDog.speak();
  myDog.bark();

  Cat myCat = Cat("Whiskers", "Feline", "Gray", "Siamese");
  myCat.speak();

  SpecialCat fancyCat = SpecialCat("Luna", "Feline", "Black", "Persian", "Blue eyes");
  fancyCat.speak();
}

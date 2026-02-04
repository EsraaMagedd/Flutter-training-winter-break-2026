import 'secondSession2.dart';

void main() {
  // creating an object
  Car myCar = Car();
  myCar.displayInfo();

  myCar.color = 'Red';
  myCar.model = 'Toyota';
  myCar.year = 2020;
  myCar.displayInfo();

  // using parameterized constructor
  Car myCar2 = Car.withData('Blue', 'Honda', 2022);
  myCar2.displayInfo();

  // using named constructor
  Car myCar3 = Car.namedConstructor();
  myCar3.displayInfo();
}

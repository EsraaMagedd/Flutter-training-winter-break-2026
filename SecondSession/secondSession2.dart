//oop : class and object
//class : blueprint
//object : instance of a class
//Encapsulation : wrapping data and methods into a single unit

class Car {
  // properties, attributes
  String? _color;
  String? _model;
  int? _year;

  //getter and setter for color
  String? get color => _color;
  set color(String? color) => _color = color;

  //getter and setter for model
  String? get model => _model;
  set model(String? model) => _model = model;

  //getter and setter for year
  int? get year => _year;
  set year(int? year) => _year = year;

  // Default constructor
  Car() {
    _color = '';
    _model = '';
    _year = 0;
  }

  // Parameterized constructor
  Car.withData(String? color, String? model, int? year) {
    this.color = color;
    this.model = model;
    this.year = year;
  }

  // Named Constructor
  Car.namedConstructor() {
    color = 'White';
    model = 'Ford';
    year = 2018;
  }

  // Method
  void displayInfo() {
    print('Car Model: $model, Color: $color, Year: $year');
  }
}


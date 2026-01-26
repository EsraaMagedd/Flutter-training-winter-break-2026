//entry point 
void main () {

  //data types in dart (primitive data types)
  int age = 25; //integer
  double height = 5.8; //double
  String name = "Ahmed"; //string
  bool isStudent = true; //boolean
  final pi = 3.14; //final type (constant)
  const gravity = 9.8; //constant type (constant)
  name.length; //property of string
  print("Name length: ${name.length}");
  


  dynamic variable = "I can be anything"; //dynamic type
  variable = 100; //now it holds an integer
  variable = false; //now it holds a boolean

  var city = "Cairo"; //type inferred as String
  city = "Alexandria"; //valid
  //city = 123; //invalid, would cause a compile-time error

  var city2;
  city2 = "Giza"; //type inferred as String


//Arthmetic operations
  int a = 10;
  int b = 3;

  print("Addition: ${a + b}"); //13
  print("Subtraction: ${a - b}"); //7
  print("Multiplication: ${a * b}"); //30
  print("Division: ${a / b}"); //3.3333
  print("Integer Division: ${a ~/ b}"); //3
  print("Modulus: ${a % b}"); //1


//Non-primitive data types: can hold multiple values
  List<String> fruits = ["Apple", "Banana", "Orange","Orange"]; //list
  print(fruits);
  Set<int> uniqueNumbers = {1, 2, 3, 4, 5 }; //set
  print(uniqueNumbers);
  Map<int, int> scores = {1: 90, 2: 85, 3: 85}; //map

  //conditional statements
  bool isRaining = age >= 18;
  if (isRaining) {
    print("Adult");
  } else if (age == 17) {
    print("Almost an adult");
  }
  else {
    print("Minor");
  }

  //ternary operator
  String eligibility = (age>=18) ? "Yes" : "No";
  print(eligibility);


  //switch case
  int age2 = 18;
    switch (age2) {
      case 16:
        print("Sweet 16");
        break;
      case 18:
        print("Legal adult");
        break;
      default:
        print("Age is just a number");
    }
  
  //loops
  //for loop
   List<String> colors = ["Red", "Green", "Blue"]; 
  for (int i = 0; i < 3; i++) {
    if (i == 1) {
      continue; //skip this iteration
    }
    print("For Loop iteration: $colors[i]");
  }

  //for-in loop
   
  for (String color in colors) {
    print("Color: $color");
    //can't access index here
  }

  //forEach loop
  colors.forEach((color) {
    print("Color in forEach: $color");
    //can't access index here
  });

  //while loop
  int j = 0;
  while (j < 5) {
    print("While Loop iteration: $j");
    j++;
  }

  //do-while loop
  int k = 0;
  do {
    print("Do-While Loop iteration: $k");
    k++;
  } while (k < 5);

//function calls
  greet();
  printMessage("Welcome to Dart programming!");

  int sum = add();
  print(sum); //5

  print(multiply(4.0, 2.5)); //10.0

  showDetails(
    name: "Omar",
    age: 30);
    
  
  //null safety: protects against null errors
  int number = 10; //non-nullable
  //number = null; //invalid
  int? nullableNumber = 1; //nullable
  nullableNumber = null; //valid
  

  //int sum2 = number + nullableNumber!; //10+null = error
  
  //null-aware operators
  int? nullableNumber2;
  int result = number + (nullableNumber2 ?? 1); //if nullableNumber2 is null, use 1
  print("Result: $result"); //10 + 1 = 11

  //nullableNumber2 = 4;
  //print(nullableNumber2.isEven); //error: might be null
  print(nullableNumber2?.isEven); //null check before accessing property
  //print(nullableNumber2!.isEven); //asserting non-null

}



 //functions
 //no return type, no parameters
  void greet() {
    print("Hello");
  }

  //no return type and with parameters
  void printMessage(String message) {
    print("Message: $message");
  } 

  //with return type and no parameters
  int add() {
    return 3 + 2;
  } 
  //with return type and parameters
  double multiply(double x, double y) {
    return x * y;
  }

  //optional parameters
  void displayInfo(String name, int level, [int? age, String? city]) {
    if (age != null) {
      print("Name: $name, Age: $age");
    } else {
      print("Name: $name, Age: Not provided");
    }
  }

  //named parameters, optional with default values
  void showDetails({required String name, int level=1 , int? age,  String? city}) {
    print("Name: $name, Level: $level");
  
  }

  
  



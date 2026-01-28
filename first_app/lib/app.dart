import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
            child: const Text("Flutter Training",
            style: TextStyle(color: Colors.white),),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              Image(
                image: AssetImage('images/course.png'),
              ),
              SizedBox(height: 50),
              Text(
                "This Flutter course is designed to help beginners "
                    "learn how to build beautiful and interactive mobile applications "
                    "using a single codebase. Throughout the course, students will explore "
                    "the basics of the Dart programming language, understand Flutter widgets, "
                    "and learn how to create responsive layouts. By the end of the course, "
                    "learners will be able to develop functional apps with navigation, images, "
                    "text, buttons, and interactivity, gaining hands-on experience that "
                    "prepares them for real-world projects.",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text("Apply"),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class App2 extends StatelessWidget {
  const App2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
            child: const Text("Profile",
            style: TextStyle(color: Colors.white),),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('images/img.png'),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Esraa Maged",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),

              const Text(
                "Computer Science teaching assistant and Flutter instructor with a strong "
                    "interest in mobile application development. Passionate about helping "
                    "students understand programming concepts, build real-world apps, and "
                    "grow their technical confidence through hands-on practice.",
                style: TextStyle(fontSize: 14),
              ),

              const SizedBox(height: 30),
              Row(
                children: const [
                  Icon(Icons.link),
                  SizedBox(width: 10),
                  Text(
                    "LinkedIn: Esraa Nassar",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Icon(Icons.code),
                  SizedBox(width: 10),
                  Text("GitHub: EsraaMagedd"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

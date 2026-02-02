import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
   CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter App',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            SizedBox(height: 20),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    _counter --;
                    setState(() {

                   });
                   print(_counter);
                  },
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.redAccent,
                    child: Icon(Icons.remove, size: 40),
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: (){
                    _counter++;
                    setState(() {

                    });
                    print(_counter);
                  },
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.green,
                    child: Icon(Icons.add, size: 40),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: (){
                _counter=0;
                setState(() {

                });
                print(_counter);
              },
              child: Container(
                width: 70,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text(
                    'Reset',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/game1.dart';
import 'package:flutter_application_1/game2.dart';
import 'package:flutter_application_1/game3.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: games(),
    );
  }
}

class games extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to Screen A
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Text('Go to Screen A'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Screen B
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizScreen(),
                  ),
                );
              },
              child: Text('Go to Screen B'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Screen C
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuestionWidget(),
                  ),
                );
              },
              child: Text('Go to Screen C'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pages/Student.dart';
import 'package:pages/pages/page1.dart';
import 'package:pages/pages/page2.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  const Home({super.key});
  static final route = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 0.5,
        title: Text('Home'),
        actions: [
          SizedBox(
            width: 20,
          ),
          Icon(Icons.home),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text('Home Page'),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  Second.route,
                  arguments: Student(name: 'Second', age: 1),
                );
              },
              child: Text('Go to second page'),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  Third.route,
                  arguments: Student(name: 'third', age: 2),
                );
              },
              child: Text('Go to third page'),
            ),
          ],
        ),
      ),
    );
  }
}

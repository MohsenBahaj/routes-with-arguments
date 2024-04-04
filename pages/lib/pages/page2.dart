import 'package:flutter/material.dart';
import 'package:pages/Student.dart';
import 'package:pages/pages/page1.dart';

void main() => runApp(Third(
      name: 'no data',
      age: 0,
    ));

class Third extends StatelessWidget {
  static final route = '/third';
  String name = '';
  int age = 0;
  Third({required this.name, required this.age});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 0.5,
        title: Text('Third page'),
        actions: [
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text('Third Page'),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(
                //   context,
                //   Second.route,
                //   arguments: Student(name: 'Second', age: 2),
                // );
              },
              child: Text('Go to second page'),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back to home'),
            ),
            SizedBox(
              height: 15,
            ),
            Text('Name     : $name'),
            SizedBox(
              height: 5,
            ),
            Text('Location : $age'),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pages/Student.dart';
import 'package:pages/pages/page2.dart';

void main() => runApp(Second());

class Second extends StatelessWidget {
  const Second({super.key});
  static final route = '/second';

  @override
  Widget build(BuildContext context) {
    Student s = ModalRoute.of(context)!.settings.arguments as Student;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 0.5,
        title: Text('Second page'),
        actions: [
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text('Second Page'),
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
            ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(
                //   context,
                //   Third.route,
                //   arguments: Student(name: 'third', age: 2),
                // );
              },
              child: Text('Go to third page'),
            ),
            SizedBox(
              height: 15,
            ),
            if (s != null) Text('Name     :     ${s.name}'),
            SizedBox(
              height: 5,
            ),
            if (s != null) Text('Location       :      ${s.age}'),
          ],
        ),
      ),
    );
  }
}

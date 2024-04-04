import 'package:flutter/material.dart';
import 'package:pages/Student.dart';
import 'package:pages/pages/home.dart';
import 'package:pages/pages/page1.dart';
import 'package:pages/pages/page2.dart';
import 'package:pages/routes/main.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home.route,
      onGenerateRoute: (settings) {
        if (settings.name == Third.route) {
          Student s = settings.arguments as Student;

          return MaterialPageRoute(
            builder: (context) => Third(
              name: s.name,
              age: s.age,
            ),
          );
        }
      },
      routes: Routes.routes,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pages/pages/home.dart';
import 'package:pages/pages/page1.dart';
import 'package:pages/pages/page2.dart';

class Routes {
  static var routes = <String, WidgetBuilder>{
    Home.route: (context) => Home(),
    Second.route: (context) => Second(),
    Third.route: (context) => Third()
  };
}

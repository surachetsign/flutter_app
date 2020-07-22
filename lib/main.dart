import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _route = <String, WidgetBuilder>{
    '/login': (context) => Login(),
    '/home': (context) => Home(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DIC Feed Json",
      home: Login(),
      routes: _route,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutterapp/pages/main/main.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TEST APP',
      theme: ThemeData(
        primaryColor: Colors.green,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent
      ),
      home: MainPage()
    );
  }
}











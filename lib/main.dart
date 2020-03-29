import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('title')),
        body: HomeBody()
      )
    );
  }
}

class HomeBody extends StatelessWidget {

  String _getData() {
    return "567";
  }

  @override
  Widget build(BuildContext context) {
    return Text(_getData());
  }
}

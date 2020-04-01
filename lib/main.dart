import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/douban_rating.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TEST APP',
      home: Scaffold(
        appBar: AppBar(title: Text('title')),
        body: Center(child: DouBanRating(rating: 7))
      )
    );
  }
}








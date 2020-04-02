import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/dashed_line.dart';
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200,
                child: DouBanDashedLine(dashedWidth: 10)
              ),
              Container(
                height: 200,
                child: DouBanDashedLine(axis: Axis.vertical,dashedHeight: 10),
              )
            ],
          ),
        )
      )
    );
  }
}











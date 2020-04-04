import 'package:flutter/material.dart';
import 'package:flutterapp/pages/home/home_body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
	    appBar: AppBar(
		    title: Text('首页'),
	    ),
	    body: HomeBody()
    );
  }
}
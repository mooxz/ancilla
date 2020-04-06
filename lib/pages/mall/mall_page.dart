import 'package:flutter/material.dart';
import 'package:flutterapp/pages/mall/mall_body.dart';

class MallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
	    appBar: AppBar(title: Text('市集')),
	    body: MallBody()
    );
  }
}

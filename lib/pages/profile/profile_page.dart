import 'package:flutter/material.dart';
import 'package:flutterapp/pages/profile/profile_body.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
	    appBar: AppBar(title: Text('个人')),
	    body: ProfileBody()
    );
  }
}

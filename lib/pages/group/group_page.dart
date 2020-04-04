import 'package:flutter/material.dart';
import 'package:flutterapp/pages/group/group_body.dart';

class GroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
	    appBar: AppBar(
		    title: Text('小组'),
	    ),
	    body: GroupBody()
    );
  }
}


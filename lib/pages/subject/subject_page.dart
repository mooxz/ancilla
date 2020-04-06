import 'package:flutter/material.dart';
import 'package:flutterapp/pages/subject/subject_body.dart';

class SubjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
	    appBar: AppBar(title: Text('书影音')),
	    body: SubjectBody()
    );
  }
}

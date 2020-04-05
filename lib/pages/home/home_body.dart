import 'package:flutter/material.dart';
import 'package:flutterapp/service/home_service/home_service.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  Map<String, dynamic> params = {
    'start': 0,
    'count': 20,
    'apikey': '0df993c66c0c636e29ecbb5344252a4a'
  };

  @override
  void initState() {
    super.initState();
    HomeService.movieTop250(params);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (ctx, index) {
        return ListTile(title: Text('item$index'));
      }
    );
  }
}

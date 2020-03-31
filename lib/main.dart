import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutterapp/service/http_request.dart';

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

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    HttpRequest.request<dynamic>(
        'https://httpbin.org/get',
        params: {'name': 'dxz'},
        inter: InterceptorsWrapper(onRequest: (options) => print('单次请求拦截')))
        .then((res) {
          print(res);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


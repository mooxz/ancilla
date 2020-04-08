import 'package:flutter/material.dart';
import 'package:flutterapp/model/home_model.dart';

class HomeBodyContent extends StatelessWidget {
  final HomeMovieTop250Model movie;

  HomeBodyContent(this.movie);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 2, color: Color.fromRGBO(234, 234, 234, 1))
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildHeader(),
          buildContent(),
          buildBrief()
        ],
      ),
    );
  }

  Widget buildHeader() {
    return Container(
      padding: EdgeInsets.fromLTRB(4, 6, 4, 6),
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 238, 205, 144),
        borderRadius: BorderRadius.circular(4)
      ),
      child: Text('No.${movie.rank}'),
    );
  }
  
  Widget buildContent() {
    return Container(
      child: Row(
        children: <Widget>[
          Text('data')
        ],  
      ),
    );
  }

  Widget buildContentImg() {
    return Container();
  }

  Widget buildContentInfo() {
    return Container();
  }

  Widget buildContentLike() {
    return Container();
  }
  
  Widget buildBrief() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
      margin: EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        color: Color.fromRGBO(235, 235, 235, 1),
        borderRadius: BorderRadius.circular(6)
      ),
      child: Text('${movie.originalTitle}'),
    );
  }
}

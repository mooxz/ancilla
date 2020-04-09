import 'package:flutter/material.dart';
import 'package:flutterapp/model/home_model.dart';
import 'package:flutterapp/widgets/dashed_line.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildContentImg(),
          buildContentInfo(),
          buildContentLine(),
          buildContentLike()
        ],
      ),
    );
  }

  Widget buildContentImg() {
    return Container(
      width: 100,
      child: Image.network(movie.imageURL),
    );
  }

  Widget buildContentInfo() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            contentInfoTitle()
          ],
        ),
      ),
    );
  }

  Widget contentInfoTitle() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      children: <Widget>[
        Icon(Icons.play_circle_outline, color: Colors.redAccent,),
        Text(movie.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Text(movie.playDate)
      ],
    );
  }

  Widget contentInfoRating() {
    return Container(

    );
  }

  Widget contentInfoBrief() {
    return Container(

    );
  }

  Widget buildContentLine() {
    return Container(
      height: 150,
      child: DouBanDashedLine(
        axis: Axis.vertical,
        dashedHeight: 6,
        count: 12,
      ),
    );
  }

  Widget buildContentLike() {
    return Container(
      child: Column(
        children: <Widget>[
          Text('想看', style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 235, 170, 60)))
        ]
      ),
    );
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

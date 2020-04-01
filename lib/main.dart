import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutterapp/service/http_request.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TEST APP',
      home: Scaffold(
        appBar: AppBar(title: Text('title')),
        body: Center(child: DouBanRating(rating: 7))
      )
    );
  }
}


class DouBanRating extends StatefulWidget {
  final double rating;
  final double maxRating;
  final int count;
  final double size;
  final Color unselectedColor;
  final Color selectedColor;

  DouBanRating({
   @required this.rating,
    this.maxRating = 10,
    this.count = 5,
    this.size = 30,
    this.unselectedColor = const Color.fromRGBO(0, 0, 0, 0.5),
    this.selectedColor = const Color.fromRGBO(100, 100, 100, 1)
  }) : assert(
         rating != null,
         'rating is null'
       );

  @override
  _DouBanRatingState createState() => _DouBanRatingState();
}

class _DouBanRatingState extends State<DouBanRating> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Row(mainAxisSize: MainAxisSize.min, children: buildUnselectedStar()),
      Row(mainAxisSize: MainAxisSize.min, children: buildSelectedStar())
    ]);
  }

  List<Widget> buildUnselectedStar() {
    return List.generate(widget.count, (index) {
      return Icon(Icons.star_border, color: widget.unselectedColor, size: widget.size);
    });
  }

  List<Widget> buildSelectedStar() {
    List<Widget> stars = [];
    final star = Icon(Icons.star, color: widget.selectedColor, size: widget.size);

    double oneStarScore = widget.maxRating / widget.count;
    int intScore = (widget.rating / oneStarScore).floor();
    double decimalScore = ((widget.rating / oneStarScore) - intScore) * widget.size;

    for (int i = 0; i < intScore; i++) {
      stars.add(star);
    }

    final decimalStar = ClipRect(
      clipper: DouBanStarClipper(decimalScore),
      child: star,
    );

    stars.add(decimalStar);

    return stars;
  }
}

class DouBanStarClipper extends CustomClipper<Rect> {
  final double decimal;

  DouBanStarClipper(this.decimal);

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, decimal, size.height);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return false;
  }
}





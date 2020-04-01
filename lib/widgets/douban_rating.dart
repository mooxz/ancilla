import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DouBanRating extends StatefulWidget {
  final double rating;
  final double maxRating;
  final int count;
  final double size;
  final Color unselectedColor;
  final Color selectedColor;
  final Widget unselectedImage;
  final Widget selectedImage;

  DouBanRating({
    @required this.rating,
    this.maxRating = 10,
    this.count = 5,
    this.size = 30,
    this.unselectedColor = const Color.fromRGBO(0, 0, 0, 0.5),
    this.selectedColor = const Color.fromRGBO(100, 100, 100, 1),
    Widget unselectedImage,
    Widget selectedImage
  }): assert(rating != null, 'rating is null'),
        this.unselectedImage = unselectedImage ?? Icon(Icons.star_border, color: unselectedColor, size: size),
        this.selectedImage = selectedImage ?? Icon(Icons.star, color: selectedColor, size: size);

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
    return List.generate(widget.count, (_) {
      return widget.unselectedImage;
    });
  }

  List<Widget> buildSelectedStar() {
    List<Widget> stars = [];
    final star = widget.selectedImage;
    double oneStarScore = widget.maxRating / widget.count;
    int intScore = (widget.rating / oneStarScore).floor();
    double decimalScore = ((widget.rating / oneStarScore) - intScore) * widget.size;

    /// add integer part to List<Widget>
    for (int i = 0; i < intScore; i++) {
      stars.add(star);
    }

    /// calculation decimal part add to List<Widget>
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
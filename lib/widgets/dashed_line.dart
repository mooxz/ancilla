import 'package:flutter/material.dart';

class DouBanDashedLine extends StatelessWidget {
  final Axis axis;
  final double dashedWidth;
  final double dashedHeight;
  final int count;
  final Color color;

  DouBanDashedLine({
    this.axis = Axis.horizontal,
    this.dashedWidth = 1,
    this.dashedHeight = 1,
    this.count = 10,
    this.color = const Color.fromRGBO(0, 0, 0, 0.3)
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flex(
        direction: axis,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(count, (_) {
          return SizedBox(
              width: dashedWidth,
              height: dashedHeight,
              child: DecoratedBox(
                  decoration: BoxDecoration(color: color)
              )
          );
        }),
      ),
    );
  }
}
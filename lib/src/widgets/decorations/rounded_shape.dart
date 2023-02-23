import 'package:flutter/material.dart';

class RoundedShape extends StatelessWidget {
  final Color color;
  final double width;
  final double height;

  const RoundedShape(
      {Key? key, this.color = Colors.blue, this.width = 100, this.height = 100})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: height,
        height: width,
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.elliptical(65, 75),
                topRight: Radius.elliptical(80, 60),
                bottomLeft: Radius.elliptical(80, 120),
                bottomRight: Radius.elliptical(150, 160))));
  }
}

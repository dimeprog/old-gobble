import 'package:flutter/material.dart';

import '../utils/dimesnsion.dart';

class BigText extends StatelessWidget {
  BigText(
      {required this.text,
      this.weight = FontWeight.normal,
      this.fontSize = 18,
      this.color = Colors.black,
      this.spacing = 3});
  final String text;
  final FontWeight weight;
  final double fontSize;
  final Color color;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: getHeight(fontSize),
        fontWeight: weight,
        fontFamily: 'BebasNeue',
        letterSpacing: getWidth(spacing),
      ),
    );
  }
}

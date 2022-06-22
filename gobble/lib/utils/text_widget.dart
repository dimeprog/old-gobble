import 'package:flutter/material.dart';

import 'dimesnsion.dart';

class BigText extends StatelessWidget {
  final double fontSize;
  final String? text;
  Color? color;
  FontWeight weight;
  TextOverflow overflow;
  BigText({
    this.fontSize = 32,
    this.color = Colors.white,
    this.weight = FontWeight.normal,
    required this.text,
    this.overflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontFamily: '',
        fontSize: getHeight(fontSize),
        fontWeight: weight,
        color: color,
        overflow: overflow,
      ),
    );
  }
}

class SmallText extends StatelessWidget {
  final double fontSize;
  final String? text;
  Color? color;
  FontWeight weight;
  TextOverflow overflow;
  SmallText({
    this.fontSize = 14,
    this.color = Colors.white,
    this.weight = FontWeight.normal,
    this.overflow = TextOverflow.ellipsis,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: getHeight(fontSize),
        fontWeight: weight,
        color: color,
        overflow: overflow,
      ),
    );
  }
}

class MediumText extends StatelessWidget {
  final double fontSize;
  final String? text;
  Color? color;
  FontWeight weight;
  TextOverflow overflow;
  MediumText({
    this.fontSize = 18,
    this.weight = FontWeight.normal,
    this.color = Colors.white,
    required this.text,
    this.overflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontFamily: '',
        fontSize: getHeight(fontSize),
        fontWeight: weight,
        color: color,
        overflow: overflow,
      ),
    );
  }
}

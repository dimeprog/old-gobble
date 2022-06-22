import 'package:flutter/material.dart';
import 'package:gobble/utils/dimesnsion.dart';

class GobbleText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: getHeight(50),
        width: getWidth(150),
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(
            getHeight(30),
          ),
        ),
        child: Center(
          child: Text(
            'GOBBLE',
            style: TextStyle(
              fontFamily: 'BebasNeue',
              fontSize: getHeight(40),
              color: Theme.of(context).colorScheme.onSurface,
              letterSpacing: getWidth(3),
            ),
          ),
        ),
      ),
    );
  }
}

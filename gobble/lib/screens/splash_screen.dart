import 'package:flutter/material.dart';
import 'package:gobble/utils/dimesnsion.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.primary,
        height: screenHeight,
        width: screenWidth,
        child: Center(
            child: Text(
          'GOBBLE',
          style: TextStyle(
            fontFamily: 'BebasNeue',
            fontSize: getHeight(120),
            color: Theme.of(context).buttonColor,
            letterSpacing: getWidth(0.5),
          ),
        )),
      ),
    ));
  }
}

import 'package:flutter/material.dart';

import '../../utils/dimesnsion.dart';

class AppRaisedButton extends StatelessWidget {
  const AppRaisedButton({
    required this.radius,
    required this.onpressed,
    required this.child,
  });
  final double radius;
  final Function() onpressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            getHeight(radius),
          ),
        ),
        onPressed: onpressed,
        child: child);
  }
}

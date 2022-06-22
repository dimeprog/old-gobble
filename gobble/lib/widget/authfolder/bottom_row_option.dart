import 'package:flutter/material.dart';
import 'package:gobble/utils/dimesnsion.dart';

class RowOption extends StatelessWidget {
  RowOption({
    required this.userOption,
    required this.userString,
    required this.RouteOPtion,
  });
  final String userString;
  final String userOption;
  final Function() RouteOPtion;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          userString,
          style: TextStyle(
            fontSize: getHeight(18),
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.surface,
          ),
        ),
        FlatButton(
          onPressed: RouteOPtion,
          hoverColor: Colors.redAccent,
          child: Text(
            userOption,
            style: TextStyle(
              fontSize: getHeight(18),
              fontWeight: FontWeight.w500,
              color: Colors.blueAccent,
            ),
          ),
        )
      ],
    );
  }
}

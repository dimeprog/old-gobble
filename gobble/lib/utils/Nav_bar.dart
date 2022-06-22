import 'package:flutter/material.dart';
import 'package:gobble/utils/dimesnsion.dart';
import 'package:gobble/utils/text_widget.dart';

class NavBar extends StatelessWidget {
  NavBar(
      {required this.icon, required this.middleText, required this.isTrailing});
  final IconData icon;
  final String middleText;

  final isTrailing;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getWidth(28.75),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.background,
            child: Icon(
              Icons.arrow_back,
              color: Theme.of(context).colorScheme.surface,
            ),
          ),
          SmallText(
            text: middleText,
            color: Theme.of(context).colorScheme.surface,
          ),
          CircleAvatar(
            child: Icon(
              Icons.favorite,
              color: Theme.of(context).colorScheme.background,
            ),
          )
        ],
      ),
    );
  }
}

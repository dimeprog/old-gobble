import 'package:flutter/material.dart';
import 'package:gobble/utils/dimesnsion.dart';
import 'package:gobble/utils/text_widget.dart';

class NavBar extends StatelessWidget {
  NavBar({required this.middleText, required this.isTrailing});
  final String middleText;

  final isTrailing;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getWidth(28.75),
        vertical: getHeight(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: getWidth(22.875),
            backgroundColor: Theme.of(context).colorScheme.background,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
          ),
          SmallText(
            text: middleText,
            color: Theme.of(context).colorScheme.surface,
            fontSize: 24,
            weight: FontWeight.w500,
          ),
          isTrailing
              ? CircleAvatar(
                  radius: getWidth(22.875),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: Theme.of(context).colorScheme.background,
                    ),
                  ),
                )
              : Text(''),
        ],
      ),
    );
  }
}

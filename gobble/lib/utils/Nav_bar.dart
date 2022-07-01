import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gobble/utils/dimesnsion.dart';
import 'package:gobble/utils/text_widget.dart';

class NavBar extends StatelessWidget {
  NavBar({
    required this.middleText,
    required this.isTrailing,
    this.textColor = const Color(0xff263238),
  });
  final String middleText;

  final Color textColor;

  final bool isTrailing;
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
              onPressed: () => Get.back,
              icon: Icon(
                Icons.arrow_back,
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
          ),
          SmallText(
            text: middleText,
            color: textColor,
            fontSize: 24,
            weight: FontWeight.w500,
          ),
          isTrailing
              ? CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: getWidth(22.875),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                )
              : Text(''),
        ],
      ),
    );
  }
}

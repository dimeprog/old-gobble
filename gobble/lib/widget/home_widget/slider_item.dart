import 'package:flutter/material.dart';
import 'package:gobble/utils/dimesnsion.dart';
import 'package:gobble/utils/text_widget.dart';

class SliderItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: getWidth(20)),
      height: getHeight(35),
      width: getWidth(115),
      child: Center(
        child: SmallText(
          text: 'All',
          color: Theme.of(context).colorScheme.background,
          fontSize: 15,
          weight: FontWeight.w400,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHeight(7),
        ),
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gobble/utils/counter_button.dart';
import 'package:gobble/utils/dimesnsion.dart';

import '../../utils/text_widget.dart';

class CartListTile extends StatelessWidget {
  Widget build(BuildContext context) {
    final ColorScheme = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getWidth(15),
        ),
        color: ColorScheme.onBackground.withOpacity(0.6),
      ),
      height: getHeight(120),
      // width: getWidth(325),
      margin: EdgeInsets.symmetric(
          horizontal: getWidth(25), vertical: getHeight(8)),
      child: Center(
        child: ListTile(
          leading: SizedBox(
            width: getWidth(72),
            height: getHeight(72),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: getHeight(3)),
              child: FittedBox(
                child: Image.asset(
                  'assets/images/image_food.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          title: SmallText(
            text: 'Puchka',
            color: ColorScheme.surface.withOpacity(0.8),
            weight: FontWeight.w500,
            fontSize: 20,
          ),
          subtitle: SmallText(
            text: 'Chouddagram 3500, Comilla',
            fontSize: 20,
            weight: FontWeight.w400,
            color: ColorScheme.primary.withOpacity(0.8),
            overflow: TextOverflow.ellipsis,
          ),
          trailing: SmallText(
            text: '\$400',
            color: ColorScheme.primary,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gobble/utils/Nav_bar.dart';
import 'package:gobble/utils/dimesnsion.dart';

import '../utils/text_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: screenHeight,
            width: screenWidth,
            margin: EdgeInsets.symmetric(
              horizontal: getWidth(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NavBar(middleText: 'Notification', isTrailing: false),
                SizedBox(
                  height: getHeight(22),
                ),
                SmallText(
                  text: 'Today',
                  color: colorScheme.surface,
                  fontSize: 20,
                  weight: FontWeight.w400,
                ),
                SizedBox(
                  height: getHeight(17),
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => Container(),
                    itemCount: 3,
                  ),
                ),
                SmallText(
                  text: 'Yesterday',
                  color: colorScheme.surface,
                  fontSize: 20,
                  weight: FontWeight.w400,
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => Container(),
                    itemCount: 3,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

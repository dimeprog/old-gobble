import 'package:flutter/material.dart';
import 'package:gobble/utils/dimesnsion.dart';
import 'package:gobble/utils/text_widget.dart';

class SettingTile extends StatelessWidget {
  SettingTile({
    required this.icon,
    required this.title,
  });
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: getHeight(53),
        width: getWidth(325),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onBackground,
          borderRadius: BorderRadius.circular(
            getHeight(15),
          ),
        ),
        // margin: EdgeInsets.only(
        //   left: getWidth(20),
        //   right: getWidth(20),
        // ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: getWidth(10),
              ),
              child: Icon(
                icon,
                size: getHeight(26),
              ),
            ),
            SizedBox(
              width: getWidth(18),
            ),
            SmallText(
              text: title,
              color: Color(0xFFEAEAEA),
              fontSize: 16,
              weight: FontWeight.w400,
            ),
            Expanded(child: Container()),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios_rounded,
                size: getHeight(16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

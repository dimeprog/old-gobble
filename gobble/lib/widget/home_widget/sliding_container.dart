import 'package:flutter/material.dart';
import 'package:gobble/utils/dimesnsion.dart';
import 'package:gobble/widget/home_widget/slider_item.dart';

class SlidingContainer extends StatelessWidget {
  const SlidingContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: getWidth(30),
      ),
      height: getHeight(38),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) => SliderItem(),
        itemCount: 20,
      ),
    );
  }
}

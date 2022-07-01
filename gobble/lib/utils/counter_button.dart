import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gobble/controller/counterController.dart';
import 'package:gobble/utils/dimesnsion.dart';
import 'package:gobble/utils/text_widget.dart';

class CounterButton extends StatefulWidget {
  CounterButton();

  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  final controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    final ColorScheme = Theme.of(context).colorScheme;
    return Container(
      height: getHeight(20),
      // width: getWidth(53),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            color: Colors.white,
            onPressed: controller.decreament,
            icon: Icon(
              Icons.remove_circle_outline_rounded,
              color: ColorScheme.surface,
              size: getWidth(25),
            ),
          ),
          SmallText(
            text: '${controller.count.value}',
            fontSize: 12,
            weight: FontWeight.w400,
            color: ColorScheme.surface,
          ),
          IconButton(
            color: Colors.white,
            onPressed: controller.increament,
            icon: Icon(
              Icons.add_circle_outline_rounded,
              color: ColorScheme.primary,
              size: getWidth(25),
            ),
          )
        ],
      ),
    );
  }
}

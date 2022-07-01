import 'package:flutter/material.dart';
import 'package:gobble/utils/counter_button.dart';

import '../../utils/Nav_bar.dart';
import '../../utils/dimesnsion.dart';
import '../../utils/text_widget.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: screenHeight,
          width: screenWidth,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: getHeight(10)),
                child: Center(
                  child: SmallText(
                    text: 'Orders',
                    color: colorScheme.surface,
                    fontSize: 30,
                    weight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: getHeight(34),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

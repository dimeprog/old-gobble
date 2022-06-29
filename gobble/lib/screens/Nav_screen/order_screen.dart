import 'package:flutter/material.dart';
import 'package:gobble/utils/counter_button.dart';

import '../../utils/Nav_bar.dart';
import '../../utils/dimesnsion.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: screenHeight,
          width: screenWidth,
          child: Column(
            children: [
              NavBar(
                middleText: 'Orders',
                isTrailing: false,
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

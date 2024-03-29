import 'package:flutter/material.dart';
import 'package:gobble/utils/Nav_bar.dart';
import 'package:gobble/utils/dimesnsion.dart';
import 'package:gobble/utils/text_widget.dart';

import '../../widget/cartwidgets/cart_list_container.dart';

class CartSceen extends StatelessWidget {
  const CartSceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: screenHeight,
          width: screenWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: getHeight(10)),
                child: Center(
                  child: SmallText(
                    text: 'Cart',
                    color: colorScheme.surface,
                    fontSize: 30,
                    weight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: getHeight(5),
              ),
              SizedBox(
                height: getHeight(420),
                child: CartListContainer(),
              ),
              SizedBox(
                height: getHeight(10),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: getHeight(121),
                      width: getWidth(350),
                      decoration: BoxDecoration(
                        color: colorScheme.onBackground,
                        borderRadius: BorderRadius.circular(
                          getHeight(15),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(getHeight(12)),
                        color: colorScheme.onBackground,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SmallText(
                                  text: 'Subtotal',
                                  color: colorScheme.surface,
                                  fontSize: 20,
                                  weight: FontWeight.w400,
                                ),
                                SmallText(
                                  text: '\$450',
                                  color: colorScheme.surface,
                                  fontSize: 20,
                                  weight: FontWeight.w400,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SmallText(
                                  text: 'Fee & Delivery',
                                  color: colorScheme.surface,
                                  fontSize: 20,
                                  weight: FontWeight.w400,
                                ),
                                SmallText(
                                  text: '\$450',
                                  color: colorScheme.surface,
                                  fontSize: 20,
                                  weight: FontWeight.w400,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SmallText(
                                  text: 'Total',
                                  color: colorScheme.surface,
                                  fontSize: 20,
                                  weight: FontWeight.w400,
                                ),
                                SmallText(
                                  text: '\$450',
                                  color: colorScheme.surface,
                                  fontSize: 20,
                                  weight: FontWeight.w400,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getHeight(8),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: getWidth(25),
                        ),
                        height: getHeight(52),
                        width: double.infinity,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              getHeight(15),
                            ),
                          ),
                          onPressed: () {},
                          color: colorScheme.primary,
                          child: SmallText(
                            text: 'Checkout',
                            fontSize: 20,
                            color: colorScheme.onSurface,
                            weight: FontWeight.w500,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

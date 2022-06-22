import 'package:flutter/material.dart';
import 'package:gobble/utils/dimesnsion.dart';
import 'package:gobble/utils/text_widget.dart';

class HomeGridItem extends StatelessWidget {
  const HomeGridItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorScheme = Theme.of(context).colorScheme;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: getHeight(10),
      ),
      height: getHeight(180),
      width: getWidth(149),
      decoration: BoxDecoration(
        color: Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(
          getHeight(30),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: getHeight(90),
            width: getWidth(104),
            child: Image.asset(
              'assets/images/image_food.png',
              fit: BoxFit.cover,
            ),
          ),
          SmallText(
            text: 'Drinks',
            color: ColorScheme.primary,
            fontSize: 20,
            weight: FontWeight.w500,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SmallText(
                text: '\$300',
                color: ColorScheme.surface,
                fontSize: getHeight(20),
              ),
              SizedBox(
                width: getWidth(46),
                height: getHeight(22),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      getHeight(20),
                    ),
                  ),
                  onPressed: () {},
                  child: Icon(
                    Icons.shopping_cart_checkout_rounded,
                    size: getHeight(20),
                    color: ColorScheme.background,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

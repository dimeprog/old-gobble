import 'package:flutter/material.dart';
import 'package:gobble/utils/dimesnsion.dart';
import 'package:gobble/utils/text_widget.dart';
import 'package:gobble/widget/home_widget/home_grid.dart';

import '../../widget/home_widget/sliding_container.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ColorScheme = Theme.of(context).colorScheme;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Container(
          height: screenHeight,
          width: screenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: getHeight(11),
                  right: getWidth(30),
                  left: getWidth(21),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: getHeight(61),
                      width: getWidth(61),
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // color: Colors.white,
                            border: Border.all(
                              width: getWidth(1),
                              color: Color(0xFFD2D2D2),
                            ),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.menu_rounded,
                              color: ColorScheme.surface,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: getHeight(28),
                      width: getWidth(23),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_sharp,
                          color: ColorScheme.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getHeight(18),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: getWidth(28),
                ),
                height: getHeight(80),
                width: getWidth(204.74),
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Fast and',
                        style: TextStyle(
                          color: ColorScheme.surface,
                          fontSize: getHeight(25),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: '\nDelicious ',
                        style: TextStyle(
                          color: ColorScheme.surface,
                          fontSize: getHeight(25),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: 'Food',
                        style: TextStyle(
                          color: ColorScheme.primary,
                          fontSize: getHeight(25),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: '✌️',
                        style: TextStyle(
                          fontSize: getHeight(25),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getHeight(28),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: getWidth(28),
                ),
                height: getHeight(45),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: getWidth(21.5),
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.location_on_outlined,
                      size: getHeight(26),
                      color: ColorScheme.surface,
                    ),
                  ),
                  title: SmallText(
                    text: 'Address',
                    color: ColorScheme.surface,
                    weight: FontWeight.w400,
                    fontSize: 20,
                  ),
                  subtitle: SmallText(
                    text: 'Chouddagram 3500, Comilla',
                    fontSize: 20,
                    weight: FontWeight.w400,
                    color: ColorScheme.primary,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              SizedBox(
                height: getHeight(34),
              ),
              SlidingContainer(),
              SizedBox(
                height: getHeight(33),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: getWidth(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText(
                      text: 'Popular Items',
                      color: ColorScheme.surface,
                      fontSize: 24,
                      weight: FontWeight.w600,
                    ),
                    SmallText(
                      text: 'see All',
                      color: ColorScheme.primary,
                      fontSize: 20,
                      weight: FontWeight.w400,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: getHeight(10),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getWidth(30),
                ),
                child: HomeGrid(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

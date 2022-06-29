import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gobble/screens/notification_screen.dart';
import 'package:gobble/utils/text_widget.dart';
import 'package:gobble/widget/accountWidgets/settings_tile.dart';

import '../../utils/Nav_bar.dart';
import '../../utils/dimesnsion.dart';

class AccountScreen extends StatelessWidget {
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
              NavBar(
                middleText: 'Account',
                isTrailing: false,
              ),
              SizedBox(
                height: getHeight(28),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: getWidth(25),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: getHeight(93),
                      decoration: BoxDecoration(
                        color: colorScheme.onBackground,
                        borderRadius: BorderRadius.circular(
                          getHeight(15),
                        ),
                      ),
                      child: Center(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: getWidth(30),
                            child: Image.asset(
                              'assets/images/suya.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: SmallText(
                            text: 'Kawsar Ahmed',
                            color: colorScheme.surface,
                            weight: FontWeight.w500,
                            fontSize: 18,
                          ),
                          subtitle: SmallText(
                            text: 'uiuxkawsar',
                            color: Color(0xFFEAEAEA),
                            fontSize: 14,
                            weight: FontWeight.w400,
                          ),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: getHeight(18),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getHeight(33),
                    ),
                    SmallText(
                      text: 'Settings',
                      color: colorScheme.surface,
                      weight: FontWeight.w500,
                      fontSize: 20,
                    ),
                    SizedBox(
                      height: getHeight(22),
                    ),
                    SettingTile(title: 'Personal Data', icon: Icons.person),
                    SizedBox(
                      height: getHeight(10),
                    ),
                    GestureDetector(
                      onTap: () => Get.to(() => NotificationScreen()),
                      child: Container(
                        height: getHeight(53),
                        width: getWidth(325),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onBackground,
                          borderRadius: BorderRadius.circular(
                            getHeight(15),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: getWidth(10),
                              ),
                              child: Icon(
                                Icons.notifications_rounded,
                                size: getHeight(26),
                              ),
                            ),
                            SizedBox(
                              width: getWidth(18),
                            ),
                            SmallText(
                              text: 'Notification',
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
                    ),
                    SizedBox(
                      height: getHeight(10),
                    ),
                    SettingTile(
                      title: 'tracking Order',
                      icon: Icons.car_rental_rounded,
                    ),
                    SizedBox(
                      height: getHeight(10),
                    ),
                    SettingTile(
                      title: 'Order status',
                      icon: Icons.timer_rounded,
                    ),
                    SizedBox(
                      height: getHeight(10),
                    ),
                    SettingTile(
                      title: 'Language',
                      icon: Icons.translate_rounded,
                    ),
                    SizedBox(
                      height: getHeight(10),
                    ),
                    SettingTile(
                      title: 'FAQs',
                      icon: Icons.question_answer,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

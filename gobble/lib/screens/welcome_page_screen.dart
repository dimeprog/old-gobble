import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gobble/route/route.dart';
import 'package:gobble/screens/login_screen.dart';
import 'package:gobble/utils/gobble.dart';

import '../utils/dimesnsion.dart';

class WelcomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: screenHeight,
          width: screenWidth,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            gradient: const LinearGradient(
              colors: [
                Color(0xFFECF8EF),
                Color.fromARGB(255, 214, 238, 243),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Stack(children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 270,
              child: Container(
                  // color: Colors.black,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFECF8EF),
                        Colors.white,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  height: 523,
                  child: Center(
                    child: Container(
                      height: getHeight(329),
                      width: getWidth(319),
                      color: Colors.transparent,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GobbleText(),
                            SizedBox(
                              height: getHeight(30),
                            ),
                            Center(
                              child: Text(
                                'Get your Food  ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: getHeight(28),
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: getWidth(0.5),
                                ),
                              ),
                            ),
                            Text(
                              'the way you like it',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: getHeight(28),
                                fontWeight: FontWeight.bold,
                                letterSpacing: getWidth(0.5),
                              ),
                            ),
                            SizedBox(
                              height: getHeight(60),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: SizedBox(
                                height: getHeight(60),
                                width: getWidth(300),
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      getHeight(30),
                                    ),
                                  ),
                                  onPressed: () => Get.off(
                                    LoginScreen(),
                                  ),
                                  child: Text(
                                    'Eat now',
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface,
                                      fontSize: getHeight(28),
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: getWidth(3),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
            ),
            Positioned(
              top: getHeight(350),
              left: 0,
              right: 0,
              child: Container(
                height: getHeight(400),
                width: screenWidth + 200,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Colors.brown,
                      Colors.black,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/homePage_image.png',
                    ),
                  ),
                  // shape: BoxShape.circle,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      getHeight(100),
                    ),
                    topRight: Radius.circular(
                      getHeight(100),
                    ),
                  ),
                ),
                child: Container(),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

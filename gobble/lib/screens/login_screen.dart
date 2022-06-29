import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gobble/controller/apicontroller.dart';
import 'package:gobble/controller/logincontroller.dart';
import 'package:gobble/route/route.dart';
import 'package:gobble/screens/BottomNav_screen.dart';
import 'package:gobble/screens/signup_screen.dart';
import 'package:gobble/services/api/BaseClient.dart';
import 'package:gobble/widget/Textwidget.dart';
import 'package:gobble/utils/gobble.dart';
import 'package:gobble/widget/authfolder/app_raisedButton.dart';
import 'package:gobble/widget/authfolder/bottom_row_option.dart';
import 'package:gobble/widget/authfolder/form_field_widget.dart';

import '../utils/dimesnsion.dart';
import '../widget/authfolder/auth_form.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final Controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SingleChildScrollView(
          child: Container(
            height: screenHeight,
            width: screenWidth,
            margin: EdgeInsets.symmetric(
              vertical: getHeight(10),
              horizontal: getWidth(40),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: getHeight(70),
                ),
                GobbleText(),
                SizedBox(
                  height: getHeight(60),
                ),
                BigText(
                  text: 'Login',
                  weight: FontWeight.w500,
                  fontSize: 40,
                  color: Theme.of(context).colorScheme.surface,
                  spacing: 2,
                ),
                SizedBox(
                  height: getHeight(20),
                ),
                Form(
                  key: Controller.loginformkey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: getHeight(25),
                      ),
                      SizedBox(
                        height: getHeight(60),
                        child: TextFormField(
                          controller: Controller.emailTextController,
                          onSaved: (value) {
                            Controller.email = value;
                          },
                          validator: (value) {
                            return Controller.validateEmail(value!);
                          },
                          style: TextStyle(
                            color: Colors.black,
                            overflow: TextOverflow.fade,
                            fontSize: getHeight(18),
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            labelText: 'Email',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(
                                getHeight(30),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                getHeight(30),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getHeight(40),
                      ),
                      SizedBox(
                        height: getHeight(60),
                        child: TextFormField(
                          controller: Controller.passwordTextController,
                          onSaved: (value) {
                            Controller.password = value;
                          },
                          validator: (value) {
                            return Controller.validatePassword(value!);
                          },
                          obscureText: true,
                          style: TextStyle(
                            color: Colors.black,
                            overflow: TextOverflow.fade,
                            fontSize: getHeight(18),
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            labelText: 'password',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(
                                getHeight(30),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                getHeight(30),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getHeight(25),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: getHeight(30),
                ),
                Center(
                  child: SizedBox(
                    height: getHeight(60),
                    width: getWidth(200),
                    child: AppRaisedButton(
                      onpressed: () {
                        // ApiController().getData;
                        Controller.LogUserIn();
                        Get.to(BottomNavigationBarScreen());
                      },
                      radius: 30,
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: getHeight(26),
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: getHeight(30),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Center(
                    child: Container(
                      height: getHeight(50),
                      width: double.infinity,
                      child: RowOption(
                        userOption: 'SignUp',
                        userString: 'Don\'t have an account?',
                        RouteOPtion: () => Get.to(
                          SignUpScreen(),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

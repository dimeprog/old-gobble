import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gobble/route/route.dart';
import 'package:gobble/screens/login_screen.dart';

import '../controller/apicontroller.dart';
import '../controller/signupcontroller.dart';
import '../utils/dimesnsion.dart';
import '../utils/gobble.dart';
import '../widget/Textwidget.dart';
import '../widget/authfolder/app_raisedButton.dart';
import '../widget/authfolder/auth_form.dart';
import '../widget/authfolder/bottom_row_option.dart';
import '../widget/authfolder/form_field_widget.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final Controller = Get.put(SignUpController());

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
              horizontal: getWidth(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: getHeight(40),
                ),
                GobbleText(),
                SizedBox(
                  height: getHeight(35),
                ),
                BigText(
                  text: 'Sign Up',
                  weight: FontWeight.w500,
                  fontSize: 40,
                  color: Theme.of(context).colorScheme.surface,
                  spacing: 2,
                ),
                SizedBox(
                  height: getHeight(20),
                ),
                Form(
                  key: Controller.signupformkey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: getHeight(60),
                        child: TextFormField(
                          controller: Controller.nameTextController,
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
                            labelText: 'Name',
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
                      SizedBox(
                        height: getHeight(60),
                        child: TextFormField(
                          controller: Controller.emailTextController,
                          onSaved: (value) {
                            Controller.name = value;
                          },
                          validator: (value) {
                            return Controller.validateName(value!);
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
                        height: getHeight(25),
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
                      SizedBox(
                        height: getHeight(60),
                        child: TextFormField(
                          controller: Controller.confirmPasswordTextController,
                          onSaved: (value) {
                            Controller.confirmPassword = value;
                          },
                          validator: (value) {
                            return Controller.validateConfirmPassword(value!);
                          },
                          obscureText: true,
                          style: TextStyle(
                            color: Colors.black,
                            overflow: TextOverflow.fade,
                            fontSize: getHeight(18),
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            labelText: ' confirm password',
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
                        ApiController().getData;
                        Controller.SignUserUp();

                        Get.toNamed(AppRoute.gotoHomeScreen());
                      },
                      radius: 30,
                      child: Text(
                        'Sign Up',
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
                  width: double.infinity,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Center(
                    child: Container(
                      height: getHeight(50),
                      width: double.infinity,
                      child: RowOption(
                        userOption: 'Login',
                        userString: 'Already have an account?',
                        RouteOPtion: () => Get.to(LoginScreen()),
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

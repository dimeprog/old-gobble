import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gobble/controller/apicontroller.dart';

import '../../controller/logincontroller.dart';
import '../../controller/signupcontroller.dart';
import '../../utils/dimesnsion.dart';
import 'form_field_widget.dart';

class AuthForm extends GetWidget {
  final loginController = Get.put(LoginController());
  final signupController = Get.put(SignUpController());
  AuthForm({
    required this.isPassword,
    required this.passwordController,
    required this.emailController,
    required this.formkey,
    required this.isLogin,
  });
  final bool isPassword;
  final TextEditingController passwordController;
  final TextEditingController emailController;
  final GlobalKey<FormState> formkey;
  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          isPassword
              ? FormFieldWidget(
                  textController: SignUpController().nameTextController,
                  label: 'Name',
                  isPassword: false,
                )
              : const Text(''),
          SizedBox(
            height: getHeight(25),
          ),
          FormFieldWidget(
            textController: emailController,
            label: 'Email',
            isPassword: false,
          ),
          SizedBox(
            height: getHeight(25),
          ),
          FormFieldWidget(
            textController: passwordController,
            label: 'password',
            isPassword: true,
          ),
          SizedBox(
            height: getHeight(25),
          ),
          isPassword
              ? FormFieldWidget(
                  textController: SignUpController().passwordTextController,
                  label: ' confirm password',
                  isPassword: true,
                )
              : Text(''),
        ],
      ),
    );
  }
}

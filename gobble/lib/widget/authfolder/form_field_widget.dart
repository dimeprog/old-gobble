import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gobble/controller/logincontroller.dart';

import '../../controller/signupcontroller.dart';
import '../../utils/dimesnsion.dart';

class FormFieldWidget extends StatelessWidget {
  final _loginController = Get.put(LoginController());
  final _signupController = Get.put(SignUpController());
  FormFieldWidget({
    required this.label,
    this.isPassword = false,
    required this.textController,
    this.isLogin = false,
  });
  final String label;
  final bool isPassword;
  final TextEditingController textController;
  final bool isLogin;

  get value => null;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(50),
      child: TextFormField(
        controller: textController,
        obscureText: isPassword,
        onSaved: (val) {
          if (isLogin) {
            _loginController.email = val;
          } else {
            _signupController.email = val;
          }
        },
        validator: (value) {
          if (isLogin) {
            _loginController.validateEmail(value!);
          } else {
            _signupController.validateEmail(value!);
          }
        },
        style: TextStyle(
          color: Colors.black,
          overflow: TextOverflow.fade,
          fontSize: getHeight(18),
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          labelText: label,
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
    );
  }
}

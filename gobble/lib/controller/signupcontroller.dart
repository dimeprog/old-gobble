import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/BaseClient.dart';
import './baseExecptionController.dart';

class SignUpController extends GetxController {
  static var client = GobbleBaseClient();
  static const baseApi = 'https://gobble-foods.herokuapp.com';
  static const apiSignup =
      'https://gobble-foods.herokuapp.com/api/v1/auth/signup';

  //  controllers

  // TextEditingController passwordTextController = TextEditingController();
  // TextEditingController confirmPasswordTextController = TextEditingController();
  // TextEditingController emailTextController = TextEditingController();
  // TextEditingController nameTextController = TextEditingController();
  late TextEditingController passwordTextController,
      emailTextController,
      nameTextController,
      confirmPasswordTextController;
  GlobalKey<FormState> signupformkey = GlobalKey<FormState>();
  var email;
  var password;
  var name;
  var confirmPassword;
  // method
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    passwordTextController = TextEditingController();
    confirmPasswordTextController = TextEditingController();
    nameTextController = TextEditingController();
    emailTextController = TextEditingController();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    passwordTextController.dispose();
    nameTextController.dispose();
    emailTextController.dispose();
    confirmPasswordTextController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return 'Enter valid Email';
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return 'Password must be of atleast 6 character';
    }
    return null;
  }

  String? validateConfirmPassword(String value) {
    if (passwordTextController.text == value) {
      return 'Password not match';
    }
    return null;
  }

  String? validateName(String value) {
    if (value.length < 4) {
      return 'Name must be of atleast 4 character';
    }
    return null;
  }

  void SignUserUp() async {
    var payLoad = {};
    var res = await client
        .post(
          baseApi,
          '/api/v1/auth/signup',
          payLoad,
        )
        .catchError(BaseExecptionController.handleError);

    print(res);
  }
}

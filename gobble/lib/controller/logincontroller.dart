import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/api/BaseClient.dart';
import './baseExecptionController.dart';

class LoginController extends GetxController {
  static var client = GobbleBaseClient(baseUrl: '');
  static const baseApi = 'https://gobble-foods.herokuapp.com';
  static const apiSignup =
      'https://gobble-foods.herokuapp.com/api/v1/auth/signup';

  //  controllers
  // TextEditingController passwordTextController = TextEditingController();
  // TextEditingController confirmPasswordTextController = TextEditingController();
  // TextEditingController emailTextController = TextEditingController();
  late TextEditingController passwordTextController, emailTextController;

  GlobalKey<FormState> loginformkey = GlobalKey<FormState>();
  var email;
  var password;

  // method
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    passwordTextController = TextEditingController();
    emailTextController = TextEditingController();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    passwordTextController.dispose();
    emailTextController.dispose();
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

  void checkalogin() {
    final isValid = loginformkey.currentState!.validate();
    if (isValid == false) {
      return;
    }
    loginformkey.currentState!.save();
  }

  void LogUserIn() async {
    final isValid = loginformkey.currentState!.validate();
    if (isValid == false) return;
    loginformkey.currentState!.save();
    var payLoad = {"email": email, "password": password};
    var res = await client
        .post(
          baseApi,
          '/api/v1/auth/login',
          payLoad,
        )
        .catchError(BaseExecptionController.handleError);
    if (res == null) return;

    print(res);
  }
}

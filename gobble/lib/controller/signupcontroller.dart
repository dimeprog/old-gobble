import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gobble/services/respository/signup_repo.dart';
import '../services/api/BaseClient.dart';
import '../services/respository/login_repo.dart';
import './baseExecptionController.dart';

class SignUpController extends GetxController {
  //  controllers

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
    final isValid = signupformkey.currentState!.validate();
    if (isValid == false) return;
    signupformkey.currentState!.save();
    var payLoad = {
      'name': name,
      "email": email,
      "password": password,
    };
    SignUpRepo signUpRepo = SignUpRepo(payLoad: payLoad);
    var res = await signUpRepo
        .signUpUser()
        .catchError(BaseExecptionController.handleError);
    if (res != null) {
      var resJson = json.decode(res.body);
      print(resJson);
    } else {
      print('could not load');
    }

    print(res);
  }
}

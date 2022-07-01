import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:gobble/controller/apicontroller.dart';
import 'package:gobble/controller/baseExecptionController.dart';
import 'package:gobble/controller/logincontroller.dart';
import 'package:gobble/controller/signupcontroller.dart';

class AllBindings implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<SignUpController>(() => SignUpController());
    Get.lazyPut<BaseExecptionController>(() => BaseExecptionController());
    Get.lazyPut<ApiController>(() => ApiController());
  }
}

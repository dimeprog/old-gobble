import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:gobble/controller/baseexecptioncontroller.dart';
import 'package:http/http.dart';
import '../services/api/BaseClient.dart';

class ApiController extends GetxController with BaseExecptionController {
  // static properties
// ////////////////////////////
  static var client = GobbleBaseClient(baseUrl: '');
  static const baseApi = 'https://gobble-foods.herokuapp.com';
  static const api = 'https://gobble-foods.herokuapp.com/api/v1/auth/signup';
  static const postmanApi =
      'https://www.postman.com/collections/bebd73842a6265931b01';
// ///////////////////////////////////////

  // controllers

// ////////////////////////////////////

  // methods
//  getData
  void getData() async {
    var res = await client
        .get(
          'https://www.postman.com/',
          'collections/bebd73842a6265931b01',
        )
        .catchError(BaseExecptionController.handleError);

    print(res);
  }

  //  post Data
  void PostData() async {
    var res = await client.post(
      'https://www.postman.com/',
      'collections/bebd73842a6265931b01',
      {'user': 'key'},
    ).catchError(BaseExecptionController.handleError);

    print(res);
  }
}

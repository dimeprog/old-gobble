import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:gobble/controller/baseexecptioncontroller.dart';
import 'package:gobble/models/product.dart';
import 'package:http/http.dart';
import '../services/api/BaseClient.dart';
import 'dart:convert';

class ApiController extends GetxController with BaseExecptionController {
  // static properties
// ////////////////////////////
  static var client = GobbleBaseClient();
  static const baseApi = 'https://gobble-foods.herokuapp.com';
  static const api = 'https://gobble-foods.herokuapp.com/api/v1/auth/signup';
  static const postmanApi =
      'https://www.postman.com/collections/bebd73842a6265931b01';
// ///////////////////////////////////////

//   @override
//   void onInit() {
//     // TODO: implement onInit
//     super.onInit();
//     // getData();
//   }
//   // controllers

// // ////////////////////////////////////

  // methods
//  getData
  // Future<void> getData() async {
  //   var res = await client
  //       .get(
  //         baseApi,
  //         '/api/v1/products',
  //       )
  //       .catchError(BaseExecptionController.handleError);

  //   print(res);
  //   // var data = jsonDecode(res.body);
  //   // var productData;
  //   // var maplist = [...data['data']].forEach((e) {
  //   //   productData = '' + e.toString();
  //   // });
  //   // var data2 = productsFromJson(productData);
  //   // print(data);
  //   // print(data2);
  // }

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

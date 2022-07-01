import 'dart:convert';

import 'package:get/get.dart';
import 'package:gobble/services/api/BaseClient.dart';
import 'package:gobble/services/api/constant.dart';
import 'package:http/http.dart';
import '../../controller/baseExecptionController.dart';
import '../../models/product.dart';

class ProductRepo extends GetxService with BaseExecptionController {
  GobbleBaseClient client = GobbleBaseClient();

  //  method to return list of product
  List<Product> getterProduct(List<dynamic> data) {
    List<Product> dataList = [];
    data.forEach((prod) {
      Product prodElement = Product.fromJson(prod);
      dataList.add(prodElement);
    });
    return dataList;
  }

  Future<List<Product>> fetchProduct() async {
    var res = await client
        .get(AppConstant.baseUrl, AppConstant.productEndPoint)
        .catchError(BaseExecptionController.handleError);
    //  decoding reponse body

    var resBody = json.decode(res.body);
    print(resBody);
    //  turning body into  product
    print(getterProduct(resBody['data']));

    return getterProduct(resBody['data']);
  }
}

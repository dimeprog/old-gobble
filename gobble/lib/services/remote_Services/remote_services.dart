import 'package:gobble/controller/baseExecptionController.dart';
import 'package:gobble/models/product.dart';
import 'package:gobble/services/api/constant.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RemoteServices with BaseExecptionController {
  static var client = http.Client();
  // convert method
  List<Product> _getterProduct(List<dynamic> data) {
    List<Product> dataList = [];
    data.forEach((prod) {
      Product prodElement = Product.fromJson(prod);
      dataList.add(prodElement);
    });
    return dataList;
  }

  // Get
  Future<List<Product>> fetchProduct() async {
    var url = Uri.parse(AppConstant.baseUrl + AppConstant.productEndPoint);
    var res =
        await client.get(url).catchError(BaseExecptionController.handleError);
    if (res.statusCode == 200) {
      var resJson = json.decode(res.body);
      return _getterProduct(resJson['data']);
    } else {
      print('could not load');
      return [];
    }
  }
}

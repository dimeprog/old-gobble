import 'package:get/get.dart';
import 'package:gobble/services/api/BaseClient.dart';
import 'package:gobble/services/api/constant.dart';
import 'package:http/http.dart';
import '../../controller/baseExecptionController.dart';
import '../../models/product.dart';

class ProductRepo extends GetxService {
  final GobbleBaseClient client;
  ProductRepo({required this.client});

  Future<Products> fetchProduct() async {
    var res = await client
        .get(AppConstant.baseUrl, AppConstant.productEndPoint)
        .catchError(BaseExecptionController.handleError);
    return productFromJson(res!);
  }
}

import 'package:get/get.dart';
import 'package:gobble/controller/baseExecptionController.dart';
import 'package:gobble/services/api/BaseClient.dart';
import 'package:gobble/services/api/constant.dart';
import 'package:http/src/response.dart';
import 'package:http/http.dart' as http;

class LoginRepo extends GetxService with BaseExecptionController {
  GobbleBaseClient client = GobbleBaseClient();
  final dynamic payload;

  LoginRepo({required this.payload});

  Future<http.Response> loginUser() async {
    var res = await client
        .post(AppConstant.baseUrl, AppConstant.loginUser, payload)
        .catchError(BaseExecptionController.handleError);
    return res;
  }
}

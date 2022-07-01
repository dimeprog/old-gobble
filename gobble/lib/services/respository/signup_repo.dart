import 'package:get/get.dart';
import 'package:gobble/services/api/BaseClient.dart';

import '../../controller/baseExecptionController.dart';
import '../api/constant.dart';
import 'package:http/http.dart' as http;

class SignUpRepo extends GetxService with BaseExecptionController {
  GobbleBaseClient client = GobbleBaseClient();
  final dynamic payLoad;
  SignUpRepo({required this.payLoad});

  Future<http.Response> signUpUser() async {
    var res = await client
        .post(AppConstant.baseUrl, AppConstant.loginUser, payLoad)
        .catchError(BaseExecptionController.handleError);
    return res;
  }
}

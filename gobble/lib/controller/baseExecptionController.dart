import 'package:gobble/helper/dialog_helper.dart';

import '../services/app_execption.dart';

class BaseExecptionController {
  static void handleError(err) {
    if (err is BadRequestExecption) {
      var msg = err.message;
      DialogHelper.showDialog(content: msg!);
    } else if (err is ApiNotRespondiingExecption) {
      var msg = err.message;
      DialogHelper.showDialog(content: msg!);
    } else if (err is UnauthorizedExecption) {
      var msg = err.message;
      DialogHelper.showDialog(content: msg!);
    } else if (err is TimeoutExecption) {
      var msg = err.message;
      DialogHelper.showDialog(content: msg!);
    } else if (err is FetchDataExecption) {
      var msg = err.message;
      DialogHelper.showDialog(content: msg!);
    }
  }
}
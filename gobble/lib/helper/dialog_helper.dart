import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gobble/utils/dimesnsion.dart';

class DialogHelper {
  //  show dialog
  static void showDialog(
      {String message = 'Error', String content = 'Something went wrong'}) {
    Get.dialog(
      Dialog(
        elevation: getHeight(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            getHeight(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                message,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: getHeight(24),
                  color: Colors.redAccent,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                content,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: getHeight(18),
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              RaisedButton(
                color: Colors.blue,
                elevation: getHeight(5),
                onPressed: () {
                  if (Get.isDialogOpen!) Get.back();
                },
                child: Text(
                  'Okay',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: getHeight(15),
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // show snackbar
  //  show bottomsheet
  // ...

}

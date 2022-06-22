import 'package:get/get.dart';

final double screenHeight = Get.context!.height;
final double screenWidth = Get.context!.width;
// final double screenDrawerWidth= Get.context!

double getHeight(double convertHeight) {
  const figmaDesignHeight = 812;
  double newScreenHeight = figmaDesignHeight / convertHeight;
  return screenHeight / newScreenHeight;
}

double getWidth(double convertWidth) {
  const figmaDesignWidth = 375;
  double newScreenWidth = figmaDesignWidth / convertWidth;
  return screenWidth / newScreenWidth;
}

double getDrawerWidth(double convertWidth) {
  const figmaDesignWidth = 288;
  double newScreenWidth = figmaDesignWidth / convertWidth;
  return screenWidth / newScreenWidth;
}

double getScrollableHeight(double convertHeight) {
  const figmaDesignHeight = 892;
  double newScreenHeight = figmaDesignHeight / convertHeight;
  return screenHeight / newScreenHeight;
}

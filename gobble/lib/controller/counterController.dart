import 'package:get/get.dart';

class CounterController extends GetxController {
  final count = Rx<int>(0);

  void increament() {
    count.value++;
  }

  void decreament() {
    if (count.value < 1) return;
    count.value--;
  }
}

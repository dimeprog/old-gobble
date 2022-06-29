import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gobble/controller/baseExecptionController.dart';
import 'package:gobble/models/product.dart';
import 'package:gobble/services/respository/product_repo.dart';

class ProductController extends GetxController with BaseExecptionController {
  //  makeing repo required
  ProductRepo? productRepo;
// varaible
  var _productList = <ProductItem>[].obs;
  List<ProductItem> get productList => _productList;
  Rx<int> counter = 0.obs;
//
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getProduct();
  }

  Future<void> getProduct() async {
    var res = await productRepo?.fetchProduct();
    if (res != null) {
      _productList.value = res.item!;
      print(res.item);
    }
    print(res);
  }

  void productCounter({required bool isIncreament}) {
    if (isIncreament == true) {
      counter.value++;
    } else {
      counter.value--;
    }
  }
}

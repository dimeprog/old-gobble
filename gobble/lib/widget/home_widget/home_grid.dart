import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gobble/controller/productcontroller.dart';
import 'package:gobble/utils/dimesnsion.dart';
import 'package:gobble/widget/home_widget/home_gridItem.dart';

class HomeGrid extends StatelessWidget {
  final loadProductController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return GetX<ProductController>(
      builder: (productList) => SizedBox(
        height: getHeight(320),
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            mainAxisSpacing: getWidth(8),
            crossAxisSpacing: getHeight(8),
          ),
          itemBuilder: (context, i) =>
              HomeGridItem(productItem: productList.productList[i]),
          itemCount: productList.productList.length,
        ),
      ),
    );
  }
}

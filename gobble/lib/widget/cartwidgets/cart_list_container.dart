import 'package:flutter/material.dart';
import 'package:gobble/widget/cartwidgets/cart_listTile.dart';

class CartListContainer extends StatelessWidget {
  const CartListContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) => CartListTile(),
      itemCount: 100,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
    );
  }
}

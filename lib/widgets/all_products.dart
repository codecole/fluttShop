import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fluttshop/models/product_model.dart';
import 'package:fluttshop/widgets/product_item.dart';

class AllProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = productData.items;

    return Container(
    height: 400,
      child: GridView.builder(
        shrinkWrap: true,

        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
          value: products[i],
          child: ProductItem(
            name: products[i].name,
            imgUrl: products[i].imgUrl,
          ),
        ),
        physics: ScrollPhysics(),
        itemCount: products.length,
      ),
    );
  }
}

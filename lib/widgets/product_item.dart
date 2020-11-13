import 'package:flutter/material.dart';
import 'package:fluttshop/screens/cart.dart';
import 'package:fluttshop/screens/product_detail.dart';
import 'package:provider/provider.dart';
import 'package:fluttshop/models/product_model.dart';
import 'package:fluttshop/models/cart.dart';


class ProductItem extends StatelessWidget {
  final String name;
  final String imgUrl;

  ProductItem({this.name, this.imgUrl});
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    final cart= Provider.of<Cart>(context);
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(ProductDetails.routeName, arguments: product.id),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: GridTile(
          child: Image.network(imgUrl),
          footer: GridTileBar(
            title: Text(name),
            backgroundColor: Colors.black87,
            trailing: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed:(){
cart.addItem(product.id, product.name, product.price);
                }
            ),
          ),
        ),
      ),
    );
  }
}

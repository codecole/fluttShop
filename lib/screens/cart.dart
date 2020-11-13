import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fluttshop/models/cart.dart';
import 'package:fluttshop/widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListView.builder(
            itemCount: cart.items.length,
            itemBuilder: (ctx, i)=> CartPrdts(
              id: cart.items.values.toList()[i].id,
               price: cart.items.values.toList()[i].price,
              quantity:  cart.items.values.toList()[i].quantity,
                name:cart.items.values.toList()[i].name,

            ),),
          FlatButton(
            onPressed: () {},
            child: Text('Checkout'),
          )
        ],
      ),
    );
  }
}

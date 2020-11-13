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
        backgroundColor: Colors.black,
        title: Text('Cart')
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 400.0,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: ListView.builder(
                    itemCount: cart.items.length,
                    itemBuilder: (ctx, i)=> CartPrdts(
                      id: cart.items.values.toList()[i].id,
                      price: cart.items.values.toList()[i].price,
                      quantity:  cart.items.values.toList()[i].quantity,
                      name:cart.items.values.toList()[i].name,

                    ),),
                ),
              ),
              FlatButton(
                padding: EdgeInsets.all(8.0),
                color: Colors.black,
                onPressed: () {},
                child: Text('Checkout',style: TextStyle(color: Colors.white,fontSize: 32.0),
              ),)
            ],
          ),
        ],

      ),
    );
  }
}

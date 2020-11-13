import 'package:flutter/material.dart';

class CartPrdts extends StatelessWidget {
  final String id;
  final String productId;
  final double price;
  final int quantity;
  final String name;

  CartPrdts({this.quantity, this.price, this.name, this.productId, this.id});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.yellow,
            child: Text(
              '\$$price',
              style: TextStyle(color: Colors.yellow),
            ),
          ),
          title: Column(
            children: [
              Text(''),
              Text('Total: \$$price*$quantity'),
            ],
          ),
          trailing: Text('$quantity x'),
        )
      ],
    );
  }
}

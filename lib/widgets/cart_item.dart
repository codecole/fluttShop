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
            radius: 32.0,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(

                '\$$price',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          title: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(name,style: TextStyle(fontWeight: FontWeight.bold),),
                Text('Total: \$${(price * quantity)}'),
              ],
            ),
          ),
          trailing: Text('$quantity x'),
        )
      ],
    );
  }
}

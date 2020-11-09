import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String name;
  final String imgUrl;

  ProductItem({this.name, this.imgUrl});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: GridTile(
        child: Image.network(imgUrl),
        footer: GridTileBar(
          title: Text(name),
          backgroundColor: Colors.black87,
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: null,
          ),
        ),
      ),
    );
  }
}

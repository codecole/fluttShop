import 'package:flutter/material.dart';
import 'package:fluttshop/models/product_model.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatelessWidget {
  static const routeName = '/product_detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedProduct = Provider.of<Products>(context).findById(productId);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(loadedProduct.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Container(
                      height: 200.0,
                      child: Center(child: Image.network(loadedProduct.imgUrl))),
                ),
                Text(
                  'Price: \$${loadedProduct.price}',
                  style: TextStyle(fontSize: 24.0, color: Colors.green),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(loadedProduct.description),
                SizedBox(
                  height: 32.0,
                ),

              ],
            ),
            Positioned(
              bottom: 80.0,
              left: 60.0,

              child: FlatButton.icon(
                padding: EdgeInsets.all(16.0),
                color: Colors.black,
                onPressed: () {},

                label: Text('Add to Cart',style: TextStyle(color: Colors.white,fontSize: 32.0),),
                icon: Icon(Icons.shopping_cart,color: Colors.white,size: 24.0,),),
            )
          ],

        ),
      ),
    );
  }
}

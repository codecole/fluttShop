import 'package:flutter/material.dart';
import 'package:fluttshop/screens/cart.dart';
import 'package:fluttshop/utilities/font.dart';
import 'package:fluttshop/widgets/all_products.dart';
import 'package:fluttshop/widgets/category.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('FluttShop'),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.shopping_cart,color: Colors.white,),
              onPressed: (){
                Navigator.
                pushNamed(context,CartScreen.routeName );

              },

            ),
          )
        ],

      ),
      body: Padding(
        padding:  EdgeInsets.all(24.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
            Text('Category',style: Style.SubHeadings),
              SizedBox(
                height: 16.0,
              ),
              Category(),
              SizedBox(
                height: 32.0,
              ),
              Text('Products',style: Style.SubHeadings,),
              SizedBox(
                height: 16.0,
              ),
              AllProducts(),

            ],
          ),
        ),
      ),
    );
  }
}

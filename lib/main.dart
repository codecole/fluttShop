import 'package:flutter/material.dart';
import 'package:fluttshop/models/product_model.dart';
import 'package:fluttshop/screens/cart.dart';
import 'package:fluttshop/screens/homepage.dart';
import 'package:fluttshop/screens/product_detail.dart';
import 'package:provider/provider.dart';

import 'models/cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Products()),
        ChangeNotifierProvider.value(value: Cart())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        theme: ThemeData.light(),
        home: HomePage(),
        routes: {
          ProductDetails.routeName:(context) =>ProductDetails(),
          CartScreen.routeName:(context) =>CartScreen()
        },
      ),
    );
  }
}

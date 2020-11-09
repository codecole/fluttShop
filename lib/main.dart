import 'package:flutter/material.dart';
import 'package:fluttshop/models/product_model.dart';
import 'package:fluttshop/screens/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Products())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        theme: ThemeData.light(),
        home: HomePage(),
      ),
    );
  }
}

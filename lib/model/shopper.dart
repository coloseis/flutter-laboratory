import 'package:flutter/material.dart';
import 'package:flutter_laboratory/model/models/cart.dart';
import 'package:flutter_laboratory/model/screens/cart.dart';
import 'package:flutter_laboratory/model/screens/catalog.dart';
import 'package:flutter_laboratory/model/screens/login.dart';
import 'package:scoped_model/scoped_model.dart';

class ShopperPage extends StatelessWidget {
final cart = CartModel();

  @override
  Widget build(BuildContext context) {
    return ScopedModel<CartModel>(
      // Here's where we provide the model to any interested widget below.
      model: cart,
      child: ModelShopperApp(),
    );
  }
}

class ModelShopperApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        textTheme: TextTheme(
          display4: TextStyle(
            fontFamily: 'Corben',
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyLoginScreen(),
        '/catalog': (context) => MyCatalog(),
        '/cart': (context) => MyCart(),
      },
    );
  }
}
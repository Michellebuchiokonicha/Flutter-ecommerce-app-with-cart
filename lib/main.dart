import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_with_cart/pages/cart_page.dart';
import 'package:flutter_ecommerce_with_cart/pages/intro_page.dart';
import 'package:flutter_ecommerce_with_cart/pages/shop_page.dart';
import 'package:flutter_ecommerce_with_cart/themes/light_mode.dart';
import 'package:provider/provider.dart';
import 'package:flutter_ecommerce_with_cart/models/shop.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        theme: lightMode,
        routes: {
          '/intro_page': (context) => const IntroPage(),
          '/shop_page': (context) => const ShopPage(),
          '/cart_page': (context) => const CartPage(),
        });
  }
}

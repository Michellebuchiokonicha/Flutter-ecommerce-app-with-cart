import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_with_cart/models/product.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
        name: "Product 1",
        price: 99.99,
        description: "Item is a bagmoandff...........ddddddd",
        imagePath: 'assets/shoe1.jpeg'),
    Product(
        name: "Product 2",
        price: 99.99,
        description: "Item is a bag",
        imagePath: 'assets/shoe4.jpeg'),
    Product(
        name: "Product 3",
        price: 99.99,
        description: "Item is a bag",
        imagePath: 'assets/shoe3.jpeg'),
    Product(
        name: "Product 4",
        price: 99.99,
        description: "Item is a bag",
        imagePath: 'assets/shoe2.jpeg'),
    Product(
        name: "Product 5",
        price: 99.99,
        description: "Item is a bag",
        imagePath: 'assets/shoe4.jpeg'),
  ];

  List<Product> _cart = [];

  List<Product> get shop => _shop;

  List<Product> get cart => _cart;

  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}

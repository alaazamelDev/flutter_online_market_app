import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_market/models/models.dart';
import 'package:online_market/screens/checkout/checkout_screen.dart';
import 'package:online_market/screens/screens.dart';
import 'package:online_market/screens/user/user_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return HomeScreen.route();
      case SplashScreen.routeName:
        return SplashScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      case WishListScreen.routeName:
        return WishListScreen.route();
      case CheckoutScreen.routeName:
        return CheckoutScreen.route();
      case UserScreen.routeName:
        return UserScreen.route();
      default:
        return error();
    }
  }
}

Route error() {
  return MaterialPageRoute(
    builder: (context) => Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
    ),
  );
}

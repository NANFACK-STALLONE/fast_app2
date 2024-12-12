import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../screens/auth/login_screen.dart';
import '../screens/fast_food/fast_food_list_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/products/product_detail_screen.dart';
import '../screens/products/product_list_screen.dart';


class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return PageTransition(
          type: PageTransitionType.fade,
          child: const HomeScreen(),
        );
      case '/login':
        return PageTransition(
          type: PageTransitionType.rightToLeft,
          child: const LoginScreen(),
        );
      case '/products':
        return PageTransition(
          type: PageTransitionType.rightToLeft,
          child: const ProductListScreen(),
        );
      case '/fast-food':
        return PageTransition(
          type: PageTransitionType.rightToLeft,
          child: const FastFoodListScreen(),
        );
      case '/product-detail':
        final productId = settings.arguments as String;
        return PageTransition(
          type: PageTransitionType.bottomToTop,
          child: ProductDetailScreen(productId: productId),
        );
      default:
        return PageTransition(
          type: PageTransitionType.fade,
          child: Scaffold(
            body: Center(child: Text('Route ${settings.name} not found')),
          ),
        );
    }
  }
}
import 'package:flutter/material.dart';

import '../../animations/fade_animation.dart';
import '../../widgets/filters/product_filters.dart';
import '../../widgets/products/product_grid.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Products'),
      ),
      body: Column(
        children: [
          FadeAnimation(
            delay: 0.2,
            child: const ProductFilters(),
          ),
          Expanded(
            child: FadeAnimation(
              delay: 0.4,
              child: const ProductGrid(),
            ),
          ),
        ],
      ),
    );
  }
}
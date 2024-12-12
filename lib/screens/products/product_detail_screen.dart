import 'package:flutter/material.dart';

import '../../animations/fade_animation.dart';
import '../../widgets/products/product_details.dart';

class ProductDetailScreen extends StatelessWidget {
  final String productId;

  const ProductDetailScreen({
    super.key,
    required this.productId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: FadeAnimation(
        delay: 0.2,
        child: ProductDetails(productId: productId),
      ),
      bottomNavigationBar: FadeAnimation(
        delay: 0.4,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ElevatedButton(
            onPressed: () {
              // TODO: Implement add to cart functionality
            },
            child: const Text('Add to Cart'),
          ),
        ),
      ),
    );
  }
}
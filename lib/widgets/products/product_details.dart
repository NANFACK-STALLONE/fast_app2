import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final String productId;

  const ProductDetails({
    super.key,
    required this.productId,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Replace with actual product data
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/1.jpg', // Chemin relatif de l'image dans le dossier assets
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product Name',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 8),
                Text(
                  '€10.99',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Product description goes here...',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Ingredients',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Wrap(
                  spacing: 8,
                  children: [
                    Chip(label: Text('Ingredient 1')),
                    Chip(label: Text('Ingredient 2')),
                    Chip(label: Text('Ingredient 3')),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  'Allergens',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Wrap(
                  spacing: 8,
                  children: [
                    Chip(label: Text('Allergen 1')),
                    Chip(label: Text('Allergen 2')),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
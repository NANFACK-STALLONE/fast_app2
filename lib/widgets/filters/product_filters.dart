import 'package:flutter/material.dart';

class ProductFilters extends StatelessWidget {
  const ProductFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Filters',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FilterChip(
                  label: const Text('All'),
                  selected: true,
                  onSelected: (bool selected) {
                    // TODO: Implement filter logic
                  },
                ),
                const SizedBox(width: 8),
                FilterChip(
                  label: const Text('Entrées'),
                  selected: false,
                  onSelected: (bool selected) {
                    // TODO: Implement filter logic
                  },
                ),
                const SizedBox(width: 8),
                FilterChip(
                  label: const Text('Plats'),
                  selected: false,
                  onSelected: (bool selected) {
                    // TODO: Implement filter logic
                  },
                ),
                const SizedBox(width: 8),
                FilterChip(
                  label: const Text('Desserts'),
                  selected: false,
                  onSelected: (bool selected) {
                    // TODO: Implement filter logic
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
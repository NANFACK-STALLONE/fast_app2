import 'package:flutter/material.dart';

import '../../data/fast_food_data.dart';
import '../../models/fast_food_item.dart';
import '../../widgets/fast_food/fast_food_card.dart';


class FastFoodListScreen extends StatelessWidget {
  const FastFoodListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<FastFoodItem> fastFoodItems = FastFoodData.items
        .map((item) => FastFoodItem.fromJson(item))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fast Food Menu'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: fastFoodItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: FastFoodCard(
              item: fastFoodItems[index],
              onTap: () => Navigator.pushNamed(
                context,
                '/product-detail',
                arguments: fastFoodItems[index].id,
              ),
            ),
          );
        },
      ),
    );
  }
}
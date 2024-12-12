

import 'package:food_app2/models/product.dart';

class FastFoodItem extends Product {
  final int preparationTime; // in minutes
  final bool isSpicy;
  final double calories;
  final String size; // Small, Medium, Large

  FastFoodItem({
    required String id,
    required String name,
    required String description,
    required double price,
    required String imageUrl,
    required List<String> ingredients,
    required List<String> allergens,
    required String category,
    required this.preparationTime,
    required this.isSpicy,
    required this.calories,
    required this.size,
  }) : super(
          id: id,
          name: name,
          description: description,
          price: price,
          imageUrl: imageUrl,
          ingredients: ingredients,
          allergens: allergens,
          category: category,
        );

  factory FastFoodItem.fromJson(Map<String, dynamic> json) {
    return FastFoodItem(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'].toDouble(),
      imageUrl: json['imageUrl'],
      ingredients: List<String>.from(json['ingredients']),
      allergens: List<String>.from(json['allergens']),
      category: json['category'],
      preparationTime: json['preparationTime'],
      isSpicy: json['isSpicy'],
      calories: json['calories'].toDouble(),
      size: json['size'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = super.toJson();
    data.addAll({
      'preparationTime': preparationTime,
      'isSpicy': isSpicy,
      'calories': calories,
      'size': size,
    });
    return data;
  }
}
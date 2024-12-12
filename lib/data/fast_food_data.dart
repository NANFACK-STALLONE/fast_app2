import '../constants/asset_paths.dart';

class FastFoodData {
  static final List<Map<String, dynamic>> items = [
    {
      'id': 'burger1',
      'name': 'Classic Burger',
      'description': 'Juicy beef patty with fresh vegetables',
      'price': 8.99,
      'imageUrl': AssetPaths.burgerClassic,
      'ingredients': ['Beef', 'Lettuce', 'Tomato', 'Cheese', 'Bun'],
      'allergens': ['Gluten', 'Dairy'],
      'category': 'Burgers',
      'preparationTime': 10,
      'isSpicy': false,
      'calories': 650.0,
      'size': 'Medium',
    },
    {
      'id': 'pizza1',
      'name': 'Pepperoni Pizza',
      'description': 'Classic pizza with pepperoni and mozzarella',
      'price': 12.99,
      'imageUrl': AssetPaths.pizzaPepperoni,
      'ingredients': ['Dough', 'Tomato Sauce', 'Pepperoni', 'Mozzarella'],
      'allergens': ['Gluten', 'Dairy'],
      'category': 'Pizzas',
      'preparationTime': 15,
      'isSpicy': false,
      'calories': 800.0,
      'size': 'Large',
    },
  ];
}
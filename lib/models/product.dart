import 'package:ecart/models/item_type.dart';

class Product {
  final String imagePath;
  final String label;
  final double price;
  final String description;
  late ItemType type;

  Product({
    required this.imagePath,
    required this.label,
    required this.price,
    required this.description,
    required ItemType type,
  });
  //  {
  //   this.type = type;
  // }
}

import 'dart:ffi';

class Product {
  const Product({
    required this.id,
    required this.name,
    required this.sellerName,
    required this.description,
    required this.price,
    required this.imageName,
  });

  final String id;
  final String name;
  final String sellerName;
  final String description;
  final String imageName;
  final Float price;
}

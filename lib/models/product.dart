import 'package:store_app/models/rating.dart';

class Product {
  final int id;
  final String title;
  final dynamic price;
  final String description;
  final String image;
  final Rating? rating;
  final String? category;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.rating,
    required this.category,
  });

  factory Product.fromJson(jsonData) {
    return Product(
      id: jsonData['id'],
      title: jsonData['title'],
      price: jsonData['price'],
      description: jsonData['description'],
      image: jsonData['image'],
      rating: Rating.fromJson(jsonData['rating']),
      category: jsonData['category'],
    );
  }
}

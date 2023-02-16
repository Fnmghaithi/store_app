import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product.dart';

class UpdateProduct {
  Future<Product> updateProduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    Future<Map<String, dynamic>> data = await Api().put(
      uri: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': category,
      },
    );

    return Product.fromJson(data);
  }
}

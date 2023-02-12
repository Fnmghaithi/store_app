import 'dart:convert';

import 'package:store_app/models/product.dart';
import 'package:http/http.dart' as http;

class CategoriesService {
  Future<List<Product>> getProductsByCategory(
      {required String categoryName}) async {
    Uri url =
        Uri.parse('https://fakestoreapi.com/products/category/$categoryName');
    http.Response response = await http.get(url);
    List<dynamic> data = jsonDecode(response.body);
    List<Product> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        Product.fromJson(data[i]),
      );
    }

    return productsList;
  }
}

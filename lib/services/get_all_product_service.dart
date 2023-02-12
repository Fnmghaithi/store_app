import 'dart:convert';
import 'package:store_app/models/product.dart';
import 'package:http/http.dart' as http;

class AllProductsService {
  Future<List<Product>> getAllProducts() async {
    Uri url = Uri.parse('https://fakestoreapi.com/products');
    http.Response response = await http.get(url);
    List<dynamic> data = jsonDecode(response.body);
    List<Product> productsList = [];

    for (dynamic jsonData in data) {
      productsList.add(
        Product.fromJson(jsonData),
      );
    }
    // for (int i = 0; i < data.length; i++) {
    //   productsList.add(
    //     Product.fromJson(data[i]),
    //   );
    // }
    return productsList;
  }
}

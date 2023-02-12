import 'dart:convert';
import 'package:store_app/models/product.dart';
import 'package:http/http.dart' as http;

class AllProductsService {
  Future<List<Product>> getAllProducts() async {
    Uri url = Uri.parse('https://fakestoreapi.com/products');
    http.Response response = await http.get(url);
    response.statusCode;
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      List<Product> productsList = [];

      for (int i = 0; i < data.length; i++) {
        productsList.add(
          Product.fromJson(data[i]),
        );
      }

      // for (dynamic jsonData in data) {
      //   productsList.add(
      //     Product.fromJson(jsonData),
      //   );
      // }

      return productsList;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode}');
    }
  }
}

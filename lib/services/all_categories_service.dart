import 'dart:convert';

import 'package:http/http.dart' as http;

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    Uri url = Uri.parse('https://fakestoreapi.com/products/categories');
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);

      return data;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode}');
    }
  }
}

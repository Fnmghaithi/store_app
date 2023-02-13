import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product.dart';

class CategoriesService {
  Future<List<Product>> getProductsByCategory(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(uri: 'https://fakestoreapi.com/products/category/$categoryName');
    List<Product> productsList = [];

    for (int i = 0; i < data.length; i++) {
      productsList.add(
        Product.fromJson(data[i]),
      );
    }

    return productsList;
  }
}

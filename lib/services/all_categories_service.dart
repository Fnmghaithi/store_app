import 'package:store_app/helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data =
        await Api().get(uri: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}

import 'package:flutter/material.dart';
import 'package:store_app/screens/home_page.dart';
import 'package:store_app/screens/update_product_page.dart';
import 'package:store_app/services/update_product.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.id: (context) => const HomePage(),
        UpdateProductPage.id: (context) => UpdateProductPage(),
      },
      initialRoute: HomePage.id,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_textfield.dart';

class UpdateProductPage extends StatelessWidget {
  static const String id = 'UpdateProduct';
  String? productName, description, price, image;
  UpdateProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    Product product = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Update Product',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              hintText: 'Product Name',
              onChanged: (value) {
                productName = value;
              },
            ),
            const SizedBox(height: 10),
            CustomTextField(
              hintText: 'Description',
              onChanged: (value) {
                description = value;
              },
            ),
            const SizedBox(height: 10),
            CustomTextField(
              hintText: 'Price',
              onChanged: (value) {
                price = value;
              },
              inputType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            CustomTextField(
              hintText: 'Image',
              onChanged: (value) {
                image = value;
              },
            ),
            const SizedBox(height: 10),
            CustomButton(
              buttonText: 'Update',
              onTap: () {
                UpdateProduct().updateProduct(
                  title: productName!,
                  price: price!,
                  description: description!,
                  image: image!,
                  category: product.category!,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

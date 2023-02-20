import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_textfield.dart';

class UpdateProductPage extends StatelessWidget {
  static const String id = 'UpdateProduct';
  const UpdateProductPage({super.key});

  @override
  Widget build(BuildContext context) {
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
            CustomTextFormField(
              hintText: 'Product Name',
            ),
            const SizedBox(height: 10),
            CustomTextFormField(
              hintText: 'Description',
            ),
            const SizedBox(height: 10),
            CustomTextFormField(
              hintText: 'Price',
            ),
            const SizedBox(height: 10),
            CustomTextFormField(
              hintText: 'Image',
            ),
            const SizedBox(height: 10),
            CustomButton(
              buttonText: 'Update',
            ),
          ],
        ),
      ),
    );
  }
}

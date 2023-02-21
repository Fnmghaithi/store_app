import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_textfield.dart';

class UpdateProductPage extends StatefulWidget {
  static const String id = 'UpdateProduct';

  UpdateProductPage({super.key});

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, description, price, image;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    Product product = ModalRoute.of(context)!.settings.arguments as Product;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
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
                onTap: () async {
                  setState(() {
                    isLoading = true;
                  });
                  try {
                    await updateProduct(product);
                    print('success!');
                  } catch (e) {
                    print(e.toString());
                  }
                  setState(() {
                    isLoading = false;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(Product product) async {
    await UpdateProduct().updateProduct(
      title: productName!,
      price: price!,
      description: description!,
      image: image!,
      category: product.category!,
    );
  }
}

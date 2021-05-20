import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerceapp/models/product.dart';
import 'package:flutter_ecommerceapp/services/product_service.dart';

class ProductsByCategoryScreen extends StatefulWidget {
  final String category_name;
  final int category_id;
  ProductsByCategoryScreen({this.category_name, this.category_id});
  @override
  _ProductsByCategoryScreenState createState() =>
      _ProductsByCategoryScreenState();
}

class _ProductsByCategoryScreenState extends State<ProductsByCategoryScreen> {
  ProductService _productService = ProductService();
  List<Product> _productListByCategory = List<Product>();

  _getProductsByCategory() async {
    var products =
        _productService.getProductsByCategory(this.widget.category_id);
    var _list = jsonDecode(products.body);
    _list.forEach((data) {
      var model = Product();
      model.id = data['id'];
      model.id = data['name'];
      model.id = data['photo'];
      model.id = data['price'];
      model.id = data['discount'];

      setState(() {
        _productListByCategory.add(model);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _getProductsByCategory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.widget.category_name),
      ),
      body: Container(
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: _productListByCategory.length,
          itemBuilder: (context, index) {
            return ProductByCategory(this._productListByCategory[index]);
          },
        ),
      ),
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerceapp/models/category.dart';
import 'package:flutter_ecommerceapp/models/product.dart';
import 'package:flutter_ecommerceapp/services/category_service.dart';
import 'package:flutter_ecommerceapp/services/product_service.dart';
import 'package:flutter_ecommerceapp/services/slider_service.dart';
import 'package:flutter_ecommerceapp/widgets/home_categories.dart';
//import 'package:flutter_ecommerceapp/widgets/home_hot_products.dart';
import 'package:flutter_ecommerceapp/widgets/home_hot_products.dart';
import 'package:flutter_ecommerceapp/widgets/slider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SliderService _sliderService = SliderService();
  CategoryService _categoryService = CategoryService();
  ProductService _productService = ProductService();

  List<Category> _categoryList = List<Category>();
  List<Product> _productList = List<Product>();

  var items = [];

  @override
  void initState() {
    super.initState();
    _getAllSliders();
    _getAllCategories();
    _getAllHotProduct();
  }

  _getAllSliders() async {
    var sliders = await _sliderService.getSliders();
    var result = jsonDecode(sliders.body);

    result['data'].forEach((data) {
      setState(() {
        items.add(NetworkImage(data['image_url']));
      });
    });

    print(result);
  }

  _getAllCategories() async {
    var categories = await _categoryService.getCategories();
    var result = jsonDecode(categories.body);
    result['data'].forEach((data) {
      var model = Category();
      model.id = data['id'];
      model.name = data['category_name'];
      model.icon = data['category_icon'];
      setState(() {
        _categoryList.add(model);
      });
    });
  }

  _getAllHotProduct() async {
    var hotProducts = await _productService.getHotProducts();
    var result = json.decode(hotProducts.body);
    result['data'].forEach((data) {
      var model = Product();
      model.id = data['id'];
      model.name = data['name'];
      model.photo = data['photo'];
      model.price = data['price'];
      model.discount = data['discount'];

      setState(() {
        _productList.add(model);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('eCommerce App'),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
          child: ListView(
        children: <Widget>[
          carouselSlider(items),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Categories'),
          ),
          HomeProductCategories(categoryList: _categoryList),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Hot & New Products!'),
          ),
          HomeHotProduct(productList: _productList),
        ],
      )),
    );
  }
}

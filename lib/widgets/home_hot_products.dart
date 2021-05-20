import 'package:flutter_ecommerceapp/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerceapp/widgets/home_hot_product.dart';

class HomeHotProduct extends StatefulWidget {
  final List<Product> productList;
  HomeHotProduct({this.productList});
  @override
  _HomeHotProductState createState() => _HomeHotProductState();
}

class _HomeHotProductState extends State<HomeHotProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 205,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: this.widget.productList.length,
          itemBuilder: (context, index) {
            return HomeHotProductMain(
              this.widget.productList[index].name,
              this.widget.productList[index].photo,
              this.widget.productList[index].price,
              this.widget.productList[index].discount,
            );
          },
        ));
  }
}

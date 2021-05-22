import 'dart:wasm';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerceapp/models/product.dart';
import 'package:flutter_ecommerceapp/screens/product_details.dart';

class HomeHotProductMain extends StatefulWidget {
  final Product product;
  HomeHotProductMain(this.product);
  @override
  _HomeHotProductMainState createState() => _HomeHotProductMainState();
}

class _HomeHotProductMainState extends State<HomeHotProductMain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      height: 260,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductDetail(this.widget.product)));
        },
        child: Card(
          child: Column(
            children: <Widget>[
              Text(this.widget.product.name),
              Image.network(
                widget.product.photo,
                width: 190.0,
                height: 130.0,
              ),
              Row(
                children: <Widget>[
                  Text('Price: ${this.widget.product.price}'),
                  Text('Discount: ${this.widget.product.discount}'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:wasm';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerceapp/screens/product_details.dart';

class HomeHotProductMain extends StatefulWidget {
  final String productName;
  final String productphoto;
  final num productprice;
  final num productdiscount;
  final String productdetail;
  HomeHotProductMain(this.productName, this.productphoto, this.productprice,
      this.productdiscount, this.productdetail);
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
                  builder: (context) => ProductDetail(
                      this.widget.productName,
                      this.widget.productphoto,
                      this.widget.productprice,
                      this.widget.productdiscount,
                      this.widget.productdetail)));
        },
        child: Card(
          child: Column(
            children: <Widget>[
              Text(this.widget.productName),
              Image.network(
                widget.productphoto,
                width: 190.0,
                height: 130.0,
              ),
              Row(
                children: <Widget>[
                  Text('Price: ${this.widget.productprice}'),
                  Text('Discount: ${this.widget.productdiscount}'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

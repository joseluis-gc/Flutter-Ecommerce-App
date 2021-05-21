import 'package:flutter/material.dart';
import 'package:flutter_ecommerceapp/models/product.dart';
import 'package:flutter_ecommerceapp/screens/product_details.dart';
import 'package:flutter_ecommerceapp/widgets/home_hot_products.dart';

class ProductByCategory extends StatefulWidget {
  final Product product;
  ProductByCategory(this.product);
  @override
  _ProductByCategoryState createState() => _ProductByCategoryState();
}

class _ProductByCategoryState extends State<ProductByCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 190,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductDetail(
                      this.widget.product.name,
                      this.widget.product.photo,
                      this.widget.product.price,
                      this.widget.product.discount)));
        },
        child: Card(
          child: Column(
            children: <Widget>[
              Text(this.widget.product.name),
              Image.network(
                widget.product.photo,
                width: 190.0,
                height: 160.0,
              ),
              Row(
                children: <Widget>[
                  Text('Price: ${this.widget.product.price}'),
                  Text('Discount ${this.widget.product.discount}'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_ecommerceapp/models/product.dart';

class ProductDetail extends StatefulWidget {
  final Product product;

  ProductDetail(this.product);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.widget.product.name),
          backgroundColor: Colors.redAccent,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 300.0,
              child: GridTile(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Container(
                    child: Image.network(this.widget.product.photo),
                  ),
                ),
                footer: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                      child: ListTile(
                    leading: Text(
                      this.widget.product.name,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    title: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            '${this.widget.product.price - this.widget.product.discount}',
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '${this.widget.product.price}',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                  onPressed: () {},
                  textColor: Colors.redAccent,
                  child: Row(
                    children: <Widget>[
                      Text('Add To Cart'),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.shopping_cart_outlined),
                      )
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.redAccent,
                  ),
                )
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: ListTile(
                title: Text(
                  this.widget.product.detail,
                  style: TextStyle(fontSize: 20.0),
                ),
                subtitle: Text(''),
              ),
            )
          ],
        ));
  }
}

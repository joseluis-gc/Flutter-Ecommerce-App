import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final String product_name;
  final String product_photo;
  final num product_price;
  final num product_discount;
  final String product_detail;

  ProductDetail(this.product_name, this.product_photo, this.product_price,
      this.product_discount, this.product_detail);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.widget.product_name),
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
                    child: Image.network(this.widget.product_photo),
                  ),
                ),
                footer: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                      child: ListTile(
                    leading: Text(
                      this.widget.product_name,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    title: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            '${this.widget.product_price - this.widget.product_discount}',
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '${this.widget.product_price}',
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
                  this.widget.product_detail,
                  style: TextStyle(fontSize: 20.0),
                ),
                subtitle: Text(''),
              ),
            )
          ],
        ));
  }
}

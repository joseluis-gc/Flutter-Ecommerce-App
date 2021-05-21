import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final String product_name;
  final String product_photo;
  final num product_price;
  final num product_discount;

  ProductDetail(this.product_name, this.product_photo, this.product_price,
      this.product_discount);

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
                child: Container(
                  child: Image.network(this.widget.product_photo),
                ),
                footer: Container(
                    child: ListTile(
                  leading: Text(this.widget.product_name),
                  title: Row(
                    children: <Widget>[
                      Text('${this.widget.product_price}'),
                      Text('${this.widget.product_discount}'),
                    ],
                  ),
                )),
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
                  icon: Icon(Icons.favorite_border),
                )
              ],
            ),
            Divider(),
            ListTile(
              title: Text('Product Details'),
              subtitle: Text(''),
            )
          ],
        ));
  }
}

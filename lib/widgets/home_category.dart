import 'package:flutter/material.dart';
import 'package:flutter_ecommerceapp/screens/products_by_category_screen.dart';

class HomeProductCategory extends StatefulWidget {
  final int categoryId;
  final String categoryName;
  final String categoryIcon;
  HomeProductCategory(this.categoryName, this.categoryIcon, this.categoryId);
  @override
  _HomeProductCategoryState createState() => _HomeProductCategoryState();
}

class _HomeProductCategoryState extends State<HomeProductCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 190,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductsByCategoryScreen(
                      category_name: widget.categoryName,
                      category_id: widget.categoryId)));
        },
        child: Card(
          child: Column(
            children: <Widget>[
              Image.network(
                widget.categoryIcon,
                width: 190.0,
                height: 130.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.categoryName),
              )
            ],
          ),
        ),
      ),
    );
  }
}

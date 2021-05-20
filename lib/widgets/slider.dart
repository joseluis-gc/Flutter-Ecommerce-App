import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';

Widget carouselSlider(items) => SizedBox(
      height: 200,
      child: Carousel(
        animationCurve: Curves.fastOutSlowIn,
        autoplayDuration: Duration(milliseconds: 2000),
        boxFit: BoxFit.cover,
        images: items,
        autoplay: true,
      ),
    );

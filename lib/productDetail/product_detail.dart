import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  final String id;
  final String name;
  final String img;
  final String code;
  final String price;
  final String promotionPrice;
  final List size;
  final List color;

  const ProductDetailPage(
      {Key key,
      this.id,
      this.name,
      this.img,
      this.code,
      this.price,
      this.promotionPrice,
      this.size,
      this.color})
      : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(),
    );
  }
}

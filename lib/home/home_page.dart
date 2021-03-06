import 'package:flutter/material.dart';
import 'package:ui_loja_virtual/home/widgets/appbar/app_bar_widget.dart';
import 'package:ui_loja_virtual/home/widgets/cardItem/card_item.dart';
import 'package:ui_loja_virtual/home/widgets/category/category_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarWidget(),
          CategoryWidget(),
          SizedBox(
            height: 24,
          ),
          CardItem(),
        ],
      ),
    );
  }
}

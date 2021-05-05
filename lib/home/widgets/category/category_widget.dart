import 'package:flutter/material.dart';
import 'package:ui_loja_virtual/constant/data_json.dart';

class CategoryWidget extends StatefulWidget {
  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    var currentIndex = 0;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: List.generate(menuItems.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 20),
              child: InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                      color: currentIndex == index
                          ? Colors.amber
                          : Colors.transparent,
                      width: 2,
                    )),
                  ),
                  child: Text(
                    menuItems[index],
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ui_loja_virtual/constant/data_json.dart';
import 'package:ui_loja_virtual/productDetail/product_detail.dart';

class CardItem extends StatefulWidget {
  @override
  _CardItemState createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Expanded(
      child: SingleChildScrollView(
        child: Wrap(
          children: List.generate(dataItems.length, (index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProductDetailPage(
                      id: dataItems[index]['id'].toString(),
                      name: dataItems[index]['name'],
                      img: dataItems[index]['img'],
                      code: dataItems[index]['code'],
                      price: dataItems[index]['price'].toString(),
                      promotionPrice:
                          dataItems[index]['promotionPrice'].toString(),
                      size: dataItems[index]['size'],
                      color: dataItems[index]['color'],
                    ),
                  ),
                );
              },
              child: Card(
                elevation: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: dataItems[index]['id'].toString(),
                      child: Container(
                        width: (size.width - 16) / 2,
                        height: (size.width - 16) / 2,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(dataItems[index]['img']),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            dataItems[index]['code'],
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Text(
                            dataItems[index]['price'].toString() + " USD",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

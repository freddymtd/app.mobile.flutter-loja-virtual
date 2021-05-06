import 'package:flutter/material.dart';

class AppBarDetailProduct extends StatelessWidget {
  final String img;

  const AppBarDetailProduct({Key key, this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(Icons.arrow_back_ios)),
            ),
          ),
          SizedBox(height: 10),
          Card(
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(''))),
            ),
          )
        ],
      ),
    );
  }
}

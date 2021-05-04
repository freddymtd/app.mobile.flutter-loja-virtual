import 'package:flutter/material.dart';

class appBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Loja Virtual",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            Row(
              children: <Widget>[
                Icon(Icons.search),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.shopping_cart)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

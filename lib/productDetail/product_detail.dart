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
    var size = MediaQuery.of(context).size;
    int activeSize = 0;
    //int activeColor = 0;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: ListView(
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
                elevation: 2,
                child: Hero(
                  tag: widget.id.toString(),
                  child: Container(
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(widget.img),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nome:",
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                    SizedBox(width: 20),
                    Flexible(
                      child: Text(
                        widget.name,
                        style: TextStyle(fontSize: 16, height: 1.5),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Code:",
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                    SizedBox(width: 20),
                    Flexible(
                      child: Text(
                        widget.code,
                        style: TextStyle(fontSize: 16, height: 1.5),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Price:",
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                    SizedBox(width: 20),
                    Flexible(
                      child: Text(
                        widget.price.toString() + " BTC",
                        style: TextStyle(fontSize: 16, height: 1.5),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Size:",
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                    SizedBox(width: 20),
                    Flexible(
                        child: Wrap(
                            children:
                                List.generate(widget.size.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              activeSize = widget.size[index]['id'];
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  width: 2,
                                  color: activeSize == widget.size[index]['id']
                                      ? Colors.grey
                                      : Colors.transparent,
                                )),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 12),
                              child: Text(
                                widget.size[index]['value'],
                                style: TextStyle(fontSize: 16, height: 1.5),
                              ),
                            ),
                          ),
                        ),
                      );
                    })))
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Color:",
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                    SizedBox(width: 20),
                    Flexible(
                        child: Wrap(
                            children:
                                List.generate(widget.color.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: InkWell(
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        widget.color[index]['value']),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  width: 2,
                                  color: Colors.grey,
                                )),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 12),
                            ),
                          ),
                        ),
                      );
                    })))
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 80,
        width: size.width,
        child: TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: () {},
            child: Text(
              "ADD TO CART",
              style: TextStyle(fontSize: 18, color: Colors.white),
            )),
      ),
    );
  }
}

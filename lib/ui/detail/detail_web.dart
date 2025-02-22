import 'package:flutter/material.dart';
import 'package:sub1/model/product.dart';

import '../detail_screen.dart';

class DetailWebPage extends StatefulWidget {

  Product product;

  DetailWebPage(this.product);

  @override
  _DetailWebPageState createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 24.0,
            horizontal: 52.0
        ),
        child: SingleChildScrollView(
          controller: _controller,
          child: Center(
            child: Container(
              width: screenWidth <= 1200 ? 800 : 1200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                      child: Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Row(
                          //crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                                child: Image.network(widget.product.imageProducts)
                            ),
                            SizedBox(width: 18.0),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        widget.product.price,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 32.0,
                                            fontFamily: 'Inder'
                                        ),
                                      ),
                                      FavoriteButton()
                                    ],
                                  ),
                                  SizedBox(height: 12.0),
                                  Text(
                                    widget.product.title,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18.0
                                    ),
                                  ),
                                  SizedBox(height: 28.0),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 16.0
                                    ),
                                    color: Color(0xFFECF0EF),
                                    child: Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 16.0,
                                              top: 6.0,
                                              bottom: 6.0
                                          ),
                                          child: Container(
                                            width: 64.0,
                                            height: 64.0,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                    image: NetworkImage(widget.product.imageSeller),
                                                    fit: BoxFit.fill
                                                )
                                            ),
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 16.0,
                                                top: 6.0,
                                                bottom: 6.0
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  widget.product.storeName,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                                SizedBox(height: 4.0),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                    top: 4.0,
                                                    left: 6.0,
                                                    right: 6.0,
                                                    bottom: 6.0
                                                  ),
                                                  color: Color(0xFFCECECE),
                                                  child: Text(
                                                    widget.product.city,
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      fontSize: 10.0,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 28.0
                    ),
                    child: Card(
                      child: Container(
                        margin: EdgeInsets.only(
                            top: 12.0,
                            bottom: 12.0
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                  top: 32.0,
                                  left: 16.0
                              ),
                              child: Text(
                                "Product Description",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 32.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(
                                    top: 16.0,
                                    bottom: 16.0
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(18.0),
                                  child: Text(
                                    widget.product.description,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

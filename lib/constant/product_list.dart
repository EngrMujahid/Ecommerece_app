import 'dart:ui';

import 'package:ecommerece_app/product/product_overview.dart';
import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  final String productImage;
  final String productName;
  final Function onTap;

  ProductList({required this.productImage, required this.productName, required this.onTap});

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          GestureDetector(
            
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 230,
              width: 160,
            
              // for card type
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffd9dad9),
              ),
            
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Expanded for image
                  Expanded(
                    flex: 2,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(widget.productImage),
                    ),
                  ),
            
                  //Expanded for text
            
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.productName,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "50\$/ 50 Gram",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
            
                          //Button section
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.only(left: 7),
                                    height: 30.0,
                                    width: 50.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            '50 Gram',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10),
                                          ),
                                        ),
                                        Center(
                                          child: Icon(
                                            Icons.arrow_drop_down,
                                            size: 20,
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Expanded(
                                  child: Container(
                                    height: 30.0,
                                    width: 50.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.remove,
                                          size: 15,
                                          color: Colors.red,
                                        ),
                                        Text('1',
                                            style: TextStyle(
                                              color: Colors.red,
                                            )),
                                        Icon(
                                          Icons.add,
                                          size: 15,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

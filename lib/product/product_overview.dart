import 'package:ecommerece_app/constant/color.dart';
import 'package:flutter/material.dart';

enum SigninCharacter { fill, outline }

class ProductOverView extends StatefulWidget {
  final productName;
  final productImage;
  ProductOverView(
    {
       required this.productName,
      this.productImage,
    }
  );

  @override
  _ProductOverViewState createState() => _ProductOverViewState();
}

class _ProductOverViewState extends State<ProductOverView> {
  SigninCharacter _character = SigninCharacter.fill;

  bottomNavigatorBar({
    required Color iconColor,
    required Color backgroundColor,
    required Color color,
    required String title,
    required IconData iconData,
  }) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(30),
        color: backgroundColor,
        child: Row(
          children: [
            Icon(
              iconData,
              size: 17,
              color: iconColor,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: TextStyle(color: color),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          bottomNavigatorBar(
            backgroundColor: textColor,
            color: Colors.white70,
            iconColor: Colors.grey,
            title: 'Add to Cart',
            iconData: Icons.favorite_outlined,
          ),
          bottomNavigatorBar(
            backgroundColor: primaryColor,
            color: textColor,
            iconColor: Colors.white70,
            title: 'Add to WishList',
            iconData: Icons.shop,
          ),
        ],
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: textColor),
        backgroundColor: primaryColor,
        title: Text('Product Overview',
            style: TextStyle(
              color: textColor,
            )),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  ListTile(
                    title: Text(widget.productName),
                    subtitle: Text('\$50'),
                  ),

                  Container(
                    height: 250,
                    padding: EdgeInsets.all(40),
                    child: Image(
                      image: AssetImage(widget.productImage),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    width: double.infinity,
                    child: Text(
                      'Available Options',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  //Row btn section

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.green,
                            ),

                            //radio btn section

                            Radio(
                              value: SigninCharacter.fill,
                              groupValue: _character,
                              activeColor: Colors.green,
                              onChanged: (value) {
                                setState(() {});
                              },
                            ),
                          ],
                        ),

                        // text section
                        Text('\$50'),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                size: 20,
                                color: Colors.blue,
                              ),
                              Text(
                                'Add',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About this Product',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'A product is a tangible item that is put on the market for acquisition, attention, or consumption, while a service is an intangible item, which arises from the output of one or more individuals.',
                    style: TextStyle(
                      fontSize: 12,
                      color: textColor,
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

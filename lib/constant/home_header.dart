import 'package:ecommerece_app/constant/fruit_list.dart';
import 'package:ecommerece_app/product/product_overview.dart';
import 'package:flutter/material.dart';

import 'product_list.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  _HomeHeaderState createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: ListView(
        children: [
          Container(
            height: 150,

            // decoration for container
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/stra.jpg'),
              ),
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 170),
                          child: Container(
                            height: 40.0,
                            width: 80.0,
                            decoration: BoxDecoration(
                                color: Color(0xffd1ad17),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(50),
                                    bottomLeft: Radius.circular(50))),

                            //text field
                            child: Center(
                              child: Text(
                                'Vigo',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  shadows: [
                                    BoxShadow(
                                        color: Colors.green,
                                        blurRadius: 10,
                                        offset: Offset(5, 3)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                        //field for 30% text
                        Text(
                          '30% Off',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.green[100],
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        //field for text
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Text(
                            'all of the vegetables products',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 10,
          ),

          // code for text before cards

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Herbs Sessions',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'veiw all',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ],
          ),

          // code for multiple Hrabs containers like cards

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [

                //product 1 detail
                ProductList(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverView(
                          productImage: 'assets/images/p1.png',
                          productName: 'Fresh Basli',
                        ),
                      ),
                    );
                  },
                  productImage: ('assets/images/p1.png'),
                  productName: 'Fresh Basli',
                ),
                
                //product 2 detail
                ProductList(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverView(
                          productImage: 'assets/images/f1.png',
                          productName: 'Fresh Basli',
                        ),
                      ),
                    );
                  },
                 productImage: ('assets/images/f1.png'),
                  productName: 'Fresh Basli',
                ),

                //product 3 detail
                ProductList(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverView(
                          productImage: 'assets/images/p1.png',
                          productName: 'Fresh Basli',
                        ),
                      ),
                    );
                  },
                  productImage: ('assets/images/p1.png'),
                  productName: 'Fresh Basli',
                ),

                //product 4 detail
                ProductList(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverView(
                          productImage: 'assets/images/f1.png',
                          productName: 'Fresh Basli',
                        ),
                      ),
                    );
                  },
                  productImage: ('assets/images/f1.png'),
                  productName: 'Fresh Basli',
                ),

                //product 5 detail
                ProductList(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverView(
                          productImage: 'assets/images/p1.png',
                          productName: 'Fresh Basli',
                        ),
                      ),
                    );
                  },
                  productImage: ('assets/images/p1.png'),
                  productName: 'Fresh Basli',
                ),

              ],
            ),
          ),

          // code for text before fruit cards

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Fruit Sessions',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'veiw all',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ],
          ),

          // code for multiple Hrabs containers like cards

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FruitList(),
                FruitList(),
                FruitList(),
                FruitList(),
                FruitList(),
                FruitList(),
                FruitList(),
                FruitList(),
                FruitList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

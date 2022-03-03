import 'package:ecommerece_app/constant/drawer.dart';
import 'package:ecommerece_app/constant/home_header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),

      //Drawer Section
      drawer: Drawer(
        child: DrawerSection(),
      ),

      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xffd6b739),
        title: Text('Home',
        style:TextStyle(
          color: Colors.black
          ),
          ),

        //action has been use for search icon and other
        actions: [
          CircleAvatar(
            radius:12,
            backgroundColor: Color(0xffd4d171),
            child: Icon(Icons.search,
            size:17,
            color: Colors.black
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),

            child: CircleAvatar(
              radius:12,
              backgroundColor: Color(0xffd4d171),
              child: Icon(Icons.shop,
              size: 17,
              color: Colors.black,
              ),
              ),
          ),
        ],
      ),
      
      body: HomeHeader(),
    );
  }
}
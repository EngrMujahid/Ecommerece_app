import 'package:ecommerece_app/constant/list_tile.dart';
import 'package:flutter/material.dart';

class DrawerSection extends StatefulWidget {
  const DrawerSection({ Key? key }) : super(key: key);

  @override
  _DrawerSectionState createState() => _DrawerSectionState();
}

class _DrawerSectionState extends State<DrawerSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffd1ad17),
      child: ListView(
        children: [
          DrawerHeader(
            child: Row(
              children:[
                CircleAvatar(
                  backgroundColor: Colors.white54,
                  radius:43,
                  child: CircleAvatar(
                    backgroundColor: Colors.red, radius:43),
                ),
                SizedBox(width:20),

                //column for text section

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome to guys'
                    ),
                    SizedBox(height:7),

                    //Login btn section
                    Container(
                      height: 30,
                      // ignore: deprecated_member_use
                      child: OutlineButton(
                        onPressed: (){},
                        child: Text('Login'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(
                            width:2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ),

            //Drawaer Menu
            listTile(icon: Icons.home_outlined,title: 'Home'),
            listTile(icon: Icons.shop_outlined,title: 'Review Cart'),
            listTile(icon: Icons.person,title: 'My Profile'),
            listTile(icon: Icons.notifications_outlined,title: 'Notification'),
            listTile(icon: Icons.star_outlined,title: 'Rating & Review'),
            listTile(icon: Icons.favorite_outlined,title: 'WishList'),
            listTile(icon: Icons.copy_outlined,title: 'Raise & Complaint'),
            listTile(icon: Icons.format_quote_outlined,title: 'FAQs'),

            //bottom section
            Container(
              height:300,
              child: Column(
                children: [
                  Text('Contact Support',
                  style: TextStyle(
                    fontSize:15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                  ),
                  
                  SizedBox(height:10),

                  Row(
                    children: [
                      Text('Call us:'),
                      SizedBox(width:10),
                      Text('+92301454')
                    ],
                  ),

                  SizedBox(height:10),

                  Row(
                    children: [
                      Text('Mail us:'),
                      SizedBox(width:10),
                      Text('user@gmail.com')
                    ],
                  ),
                ],
                ),
            ),  
        ],
        
      ),
    );
  }
}
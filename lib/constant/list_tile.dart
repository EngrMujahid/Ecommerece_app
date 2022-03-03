
     import 'package:flutter/material.dart';

Widget listTile({required IconData icon,required String title}){
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(title, 
      style: TextStyle(color: Colors.black45),
      ),
    );
  }

import 'package:amibike/pages/home_pages.dart';
import 'package:amibike/pages/profile_page.dart';
import 'package:amibike/theme.dart';
import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var icons = Icons;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: backgroundColor3,
        boxShadow: [
          BoxShadow(
            color: textColor1.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePages()));
            },
            icon: Icon(Icons.home),
            color: backgroundColor2,
            iconSize: 35,
          ),
          Icon(
            Icons.favorite,
            color: backgroundColor2,
            size: 35,
          ),
          Icon(
            Icons.notifications,
            color: backgroundColor2,
            size: 35,
          ),
          IconButton(
            icon: Icon(Icons.person),
            color: backgroundColor2,
            iconSize: 35,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
          ),
        ],
      ),
    );
  }
}

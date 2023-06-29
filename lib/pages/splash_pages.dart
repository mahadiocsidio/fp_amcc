import 'dart:async';

import 'package:amibike/theme.dart';
import 'package:flutter/material.dart';

class SplashPages extends StatefulWidget {
  const SplashPages({super.key});

  @override
  State<SplashPages> createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(Duration(seconds: 3),
        (() => Navigator.pushNamed(context, '/on-boarding')));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Container(
          width: 200,
          height: 400,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
            'assets/kopi.png',
          ))),
        ),
      ),
    );
  }
}

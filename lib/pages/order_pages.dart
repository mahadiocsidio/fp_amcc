import 'package:amibike/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SingleScreen extends StatelessWidget {
  String img;
  SingleScreen(this.img);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30,
              bottom: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 25,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: backgroundColor2.withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: Image.asset(
                    'assets/$img.png',
                    width: MediaQuery.of(context).size.width / 1.2,
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Best Coffee',
                        style: TextStyle(
                          color: textColor4.withOpacity(0.4),
                          letterSpacing: 3,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        img,
                        style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 1,
                          color: textColor4,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              width: 120,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: textColor4.withOpacity(0.2),
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      CupertinoIcons.minus,
                                      size: 18,
                                      color: textColor4,
                                    ),
                                    SizedBox(width: 15),
                                    Text(
                                      '2',
                                      style: TextStyle(
                                        color: textColor4,
                                        fontSize: 16,
                                        fontWeight: semiBold,
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Icon(
                                      CupertinoIcons.minus,
                                      size: 18,
                                      color: textColor4,
                                    ),
                                  ]),
                            ),
                            Text(
                              '\$ 30.20',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: semiBold,
                                color: textColor4,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Coffee is a drink that can make us more relaxed and relaxed',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: semiBold,
                          color: textColor4.withOpacity(0.4),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            'Volume :',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: semiBold,
                              color: textColor4,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '60 ml',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: semiBold,
                              color: textColor4,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 20,
                                horizontal: 50,
                              ),
                              decoration: BoxDecoration(
                                color: backgroundColor3,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Text(
                                'Add To Cart',
                                style: TextStyle(
                                  color: textColor4,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: backgroundColor4,
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Icon(
                                  Icons.favorite,
                                  color: textColor4,
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

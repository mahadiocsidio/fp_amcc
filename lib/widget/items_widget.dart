import 'package:amibike/pages/order_pages.dart';
import 'package:amibike/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  List img = [
    'Cappucino',
    'Cappucino Latte',
    'Chocolate',
    'Mocha',
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: (150 / 195),
      children: [
        for (int i = 0; i < img.length; i++)
          Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: backgroundColor3,
                  boxShadow: [
                    BoxShadow(
                      color: backgroundColor1.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 8,
                    )
                  ]),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SingleScreen(img[i])));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Image.asset(
                        "assets/${img[i]}.png",
                        width: 90,
                        height: 90,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            img[i],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: textColor4,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Best Coffee',
                            style: TextStyle(
                              fontSize: 16,
                              color: textColor4,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$30',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: semiBold,
                            color: textColor4,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: backgroundColor4,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            CupertinoIcons.add,
                            size: 20,
                            color: textColor4,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ))
      ],
    );
  }
}

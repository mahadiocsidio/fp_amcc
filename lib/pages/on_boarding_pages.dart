import 'package:amibike/pages/home_pages.dart';
import 'package:amibike/pages/sign_in_pages.dart';
import 'package:amibike/theme.dart';
import 'package:flutter/material.dart';

class OnBoardingPages extends StatelessWidget {
  const OnBoardingPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(
                'assets/kopi.png',
              ),
              height: 500,
              width: 500,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Coffee so good, your taste buds will love it.',
              textAlign: TextAlign.center,
              style: whiteTextStyle.copyWith(
                color: Colors.white,
                fontSize: 30,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'The best grain, the finest roast, the powerful flavor.',
              textAlign: TextAlign.center,
              style: whiteTextStyle.copyWith(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInPages()));
              },
              child: Text('Get Started'),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFF57F17),
                minimumSize: Size(300, 55),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

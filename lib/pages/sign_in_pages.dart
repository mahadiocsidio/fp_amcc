import 'package:amibike/pages/home_pages.dart';
import 'package:amibike/theme.dart';
import 'package:flutter/material.dart';

class SignInPages extends StatelessWidget {
  const SignInPages({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor1,
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/kopi.png',
                  width: 300,
                  height: 300,
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  'Lets Get Your Log In!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: textColor4,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                style: TextStyle(
                  color: textColor4
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 30),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: backgroundColor2)),
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: textColor4,
                  ),
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(
                    color: textColor4,
                  ),
                  counterStyle: TextStyle(
                  ),
                  prefixIcon: Icon(Icons.email, color: backgroundColor2),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                style: TextStyle(
                  color: textColor4
                ),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: backgroundColor2)),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: textColor4,
                  ),
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(
                    color: textColor4,
                  ),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock, color: backgroundColor2,),
                  suffixIcon:
                      Icon(Icons.remove_red_eye, color: backgroundColor2),
                ),
                obscureText: true,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.check_box,
                    color: backgroundColor2,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Remember Me',
                    style: TextStyle(
                      color: textColor4,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 100),
                  Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: textColor4,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePages()),
                    );
                  },
                  child: Text('Login'.toUpperCase()),
                  style: ElevatedButton.styleFrom(
                    primary: backgroundColor4, //warna button
                    minimumSize: Size(200, 40), //size w & h
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  
  void setState(Set<bool> set) {}
}

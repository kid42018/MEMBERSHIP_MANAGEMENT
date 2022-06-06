import 'package:flutter/material.dart';
import 'package:senior_project/Logic/Authentication/signup.dart';
import 'package:senior_project/apply_form.dart';

import 'login.dart';

class start_page extends StatefulWidget {
  @override
  _start_pageState createState() => _start_pageState();
}

class _start_pageState extends State<start_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFF082534),
          Color(0xFF082534),
          Color(0xFF082534),
          Color(0xFF082534).withOpacity(0.9),
          Colors.white,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Hero(
              tag: "image",
              child: Image(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.width * 0.5,
                image: AssetImage("assets/logo.png"),
              ),
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/login_page');
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Theme.of(context).backgroundColor,
                    ),
                    width: MediaQuery.of(context).size.width * 0.7,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Center(
                        child: Text(
                      "LOGIN",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          letterSpacing: 2,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/signup_page');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(blurRadius: 0.4, color: Colors.white)
                      ],
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xFF082534),
                    ),
                    width: MediaQuery.of(context).size.width * 0.7,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Center(
                        child: Text(
                      "SIGNUP",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: "Poppins",
                          letterSpacing: 2,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

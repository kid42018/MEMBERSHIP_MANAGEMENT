import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:senior_project/Presentation/Home%20Pages/main_page.dart';
import 'package:senior_project/apply_form.dart';
import '../../reusables.dart';
import 'auth_service.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class signup_page extends StatefulWidget {
  signup_page({Key key}) : super(key: key);

  @override
  _signup_pageState createState() => _signup_pageState();
}

class _signup_pageState extends State<signup_page> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  String phoneeNumber = 'default';

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Hero(
              tag: "image",
              child: Image(
                image: AssetImage("assets/logo.png"),
              ),
            ),
          )
        ],
        backgroundColor: Color(0xFF082534),
        elevation: 0,
        title: Text("SIGNUP",
            style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: "Poppins",
                letterSpacing: 3,
                fontSize: 17,
                fontWeight: FontWeight.bold)),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFF082534),
          Color(0xFF082534),
          Color(0xFF082534),
          Color(0xFF082534).withOpacity(0.9),
          Colors.white,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    // height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: BorderRadius.circular(23)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 28.0, bottom: 18),
                              child: Text(
                                "SIGNUP",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    letterSpacing: 3,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Divider(
                              color: Colors.black.withOpacity(0.6),
                              indent: 28,
                              endIndent: 28,
                            ),
                          ],
                        ),
                        TextFieldNew(
                            Name: "First Name",
                            short: false,
                            controller: firstNameController),
                        TextFieldNew(
                            Name: "Last Name",
                            short: false,
                            controller: lastNameController),
                        TextFieldNew(
                            Name: "Email",
                            short: false,
                            controller: emailController),
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        //   child: IntlPhoneField(
                        //     showCountryFlag: false,
                        //     readOnly: false,
                        //     decoration: InputDecoration(
                        //       labelText: 'Phone Number',
                        //     ),
                        //     onChanged: (phone) {
                        //       phoneeNumber = phone.completeNumber.toString();
                        //     },
                        //     onCountryChanged: (phone) {
                        //       //print('Country code changed to: ' + phone.countryCode);
                        //     },
                        //   ),
                        // ),
                        TextFieldNew(
                            Name: "Password",
                            short: false,
                            controller: passwordController),
                        TextFieldNew(
                            Name: "Confirm Password",
                            short: false,
                            controller: confirmPasswordController),
                        GestureDetector(
                            onTap: () {
                              String x = emailController.text.trim();

                              print(x + passwordController.text);
                            },
                            child: Text('jgh gjhbghjbkgjp')),

                        GestureDetector(
                          onTap: () {
                            String x = emailController.text.trim();

                            print(x + passwordController.text);

                            FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                                    email: x, password: passwordController.text)
                                .then((value) => print('succes'))
                                .catchError((onError) => print('$onError'));

                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => main_page()));
                          },
                          child: Center(
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 0.4, color: Colors.white)
                                ],
                                borderRadius: BorderRadius.circular(40),
                                color: Color(0xFF082534),
                              ),
                              width: MediaQuery.of(context).size.width * 0.7,
                              padding: EdgeInsets.symmetric(vertical: 15),
                              child: Center(
                                  child: Text(
                                "Signup",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    letterSpacing: 2,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                            ),
                          ),
                        )
                      ],
                    ),
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

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:senior_project/Logic/Authentication/signup.dart';
import 'package:senior_project/Presentation/Home%20Pages/main_page.dart';
import 'package:senior_project/apply_form.dart';

import '../../Authentication/signup.dart';
import '../../reusables.dart';

class login_page extends StatefulWidget {
  login_page({Key key}) : super(key: key);

  @override
  _login_pageState createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  TextEditingController emailController =
      TextEditingController(text: 'default');
  TextEditingController passwordController =
      TextEditingController(text: 'default');
  String phoneeNumber = 'default';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF082534),
        elevation: 0,
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SafeArea(
                  child: Center(
                    child: Hero(
                      tag: "image",
                      child: Image(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.width * 0.4,
                        image: AssetImage("assets/logo.png"),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    // height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).primaryColorLight,
                          offset: Offset(0, 0),
                          blurRadius: 2,
                          spreadRadius: 0.5,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 28.0, bottom: 18),
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    letterSpacing: 3,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Divider(
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.6),
                              indent: 28,
                              endIndent: 28,
                            ),
                          ],
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        //   child: IntlPhoneField(
                        //     showCountryFlag: false,
                        //     readOnly: false,
                        //     decoration: InputDecoration(
                        //       labelText: 'Phone Number',
                        //     ),
                        //     onChanged: (phone) {
                        //       //print(phone.completeNumber);
                        //     },
                        //     onCountryChanged: (phone) {
                        //       //print('Country code changed to: ' + phone.countryCode);
                        //     },
                        //   ),
                        // ),
                        TextFieldNew(
                            Name: "Email",
                            short: false,
                            controller: emailController),
                        TextFieldNew(
                            Name: "Password",
                            short: false,
                            controller: emailController),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/main_page');
                              },
                              child: Container(
                                margin: EdgeInsets.only(top: 20, bottom: 10),
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
                                  "LOGIN",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      letterSpacing: 2,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 0.2),
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white,
                              ),
                              width: MediaQuery.of(context).size.width * 0.7,
                              padding: EdgeInsets.symmetric(vertical: 15),
                              child: Center(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.google,
                                      color: Color(0xFF082534),
                                    ),
                                    Text(
                                      "Continue with Google",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "Poppins",
                                          letterSpacing: 2,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              )),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 0.2),
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white,
                              ),
                              width: MediaQuery.of(context).size.width * 0.7,
                              padding: EdgeInsets.symmetric(vertical: 15),
                              child: Center(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.phoneAlt,
                                      color: Color(0xFF082534),
                                    ),
                                    Text(
                                      "Continue with Phone",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "Poppins",
                                          letterSpacing: 2,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              )),
                            ),
                          ],
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

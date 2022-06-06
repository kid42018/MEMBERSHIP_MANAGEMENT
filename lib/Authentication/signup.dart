import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:senior_project/apply_form.dart';

import '../Home Pages/main_page.dart';
import '../main_page2.dart';
import '../reusables.dart';

class signup_page extends StatefulWidget {
  signup_page({Key key}) : super(key: key);

  @override
  _signup_pageState createState() => _signup_pageState();
}

class _signup_pageState extends State<signup_page> {
  @override
  Widget build(BuildContext context) {
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
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFF082534),
          Color(0xFF082534),
          Color(0xFF082534),
          Color(0xFF082534).withOpacity(0.9),
          Colors.white,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
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
                    TextFieldNew(Name: "First Name", hint: "", short: false),
                    TextFieldNew(Name: "Last Name", hint: "", short: false),
                    TextFieldNew(Name: "Email", hint: "", short: false),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: IntlPhoneField(
                        showCountryFlag: false,
                        readOnly: false,
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                        ),
                        onChanged: (phone) {
                          //print(phone.completeNumber);
                        },
                        onCountryChanged: (phone) {
                          //print('Country code changed to: ' + phone.countryCode);
                        },
                      ),
                    ),
                    TextFieldNew(Name: "Password", hint: "", short: false),
                    TextFieldNew(
                        Name: "Confirm Password", hint: "", short: false),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => main_page2()));
                      },
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
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
    );
  }
}

class TextFieldNew extends StatelessWidget {
  const TextFieldNew(
      { this.Name,  this.short,  this.hint, TextEditingController controller});

  final String Name;
  final bool short;
  final String hint;

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    return Container(
      width: 250,
      child: TextField(
        cursorColor: Color(0xFF082534),
        decoration: InputDecoration(
          hintStyle: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: isDarkMode
                      ? Colors.white.withOpacity(0.7)
                      : Color(0xFF082534).withOpacity(0.5))),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: isDarkMode
                      ? Colors.white.withOpacity(0.5)
                      : Color(0xFF082534))),
          labelText: Name,
          labelStyle: TextStyle(
              fontSize: 13,
              fontFamily: "Poppins",
              color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}

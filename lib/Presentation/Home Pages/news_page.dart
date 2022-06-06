import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:senior_project/Presentation/Home%20Pages/profile.dart';

class news_page extends StatefulWidget {
  const news_page({Key key}) : super(key: key);

  @override
  _news_pageState createState() => _news_pageState();
}

class _news_pageState extends State<news_page> {
  static String getFirstWord(String inputString) {
    List<String> wordList = inputString.split(" ");
    if (wordList.isNotEmpty) {
      return wordList[0];
    } else {
      return ' ';
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    ImageProvider image = AssetImage('assets/melaku.jpeg');

    String text =
        "This week will be the week we award a great mentor and a great motivation to us all at Hilton hotel addis ababa  his week will be the week we award a great mentor and a great motivation to us all at Hilton hotel addis ababa  his week will be the week we award a great mentor and a great motivation to us all at Hilton hotel addis ababa  his week will be the week we award a great mentor and a great motivation to us all at Hilton hotel addis ababa";
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          // backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          title: Text(""),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Center(
                  child: Column(
                    children: [
                      NewsCard(
                        image: AssetImage("assets/melaku.jpeg"),
                        text: text,
                      ),
                      NewsCard(
                        image: AssetImage("assets/event1.png"),
                        text: text,
                      ),
                      NewsCard(
                        image: AssetImage("assets/event2.jpeg"),
                        text: text,
                      ),
                      NewsCard(
                        image: AssetImage("assets/melaku.jpeg"),
                        text: text,
                      ),
                      NewsCard(
                        image: AssetImage("assets/melaku.jpeg"),
                        text: text,
                      ),
                      NewsCard(
                        image: AssetImage("assets/event1.png"),
                        text: text,
                      ),
                      NewsCard(
                        image: AssetImage("assets/event2.jpeg"),
                        text: text,
                      ),
                      NewsCard(
                        image: AssetImage("assets/melaku.jpeg"),
                        text: text,
                      ),
                      NewsCard(
                        image: AssetImage("assets/melaku.jpeg"),
                        text: text,
                      ),
                      NewsCard(
                        image: AssetImage("assets/event1.png"),
                        text: text,
                      ),
                      NewsCard(
                        image: AssetImage("assets/event2.jpeg"),
                        text: text,
                      ),
                      NewsCard(
                        image: AssetImage("assets/melaku.jpeg"),
                        text: text,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 15, bottom: 10),
              // height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(0.0, 1.0),
                  colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.85),
                    Colors.black.withOpacity(0.75),
                    Colors.black.withOpacity(0.65),
                    Colors.black.withOpacity(0.55),
                    Colors.black.withOpacity(0.35),
                    Colors.black.withOpacity(0.01),
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Melaku",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    " " + "something",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 5),
                  Hero(
                    tag: "picture",
                    child: Container(
                      margin: EdgeInsets.only(right: 15),
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.height * 0.08,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image:
                              DecorationImage(image: image, fit: BoxFit.cover)),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => profile_page(
                                    ID: 123456,
                                    image: image,
                                    firstName: "Abel",
                                    lastName: "Dinku")),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // GestureDetector(
            //   onTap: () => print("pdpt"),

            //   // onTap: () {
            //   //   Navigator.pushReplacement(
            //   //       context,
            //   //       MaterialPageRoute(
            //   //           builder: (context) => main_page()));
            //   // },
            //   child: Container(
            //     margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            //     decoration: BoxDecoration(
            //       boxShadow: [BoxShadow(blurRadius: 10.4, color: Colors.black)],
            //       borderRadius: BorderRadius.circular(5),
            //       color: isDarkMode
            //           ? Colors.white.withOpacity(0.9)
            //           : Color(0xFF082534),
            //     ),
            //     //width: MediaQuery.of(context).size.width * 0.3,
            //     height: MediaQuery.of(context).size.width * 0.1,
            //     padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            //     child: Center(
            //         child: Text(
            //       "Apply for Membership",
            //       style: TextStyle(
            //           fontFamily: "Poppins",
            //           letterSpacing: 2,
            //           fontSize: 14,
            //           fontWeight: FontWeight.bold,
            //           color: isDarkMode ? Colors.black : Colors.white),
            //     )),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  const NewsCard({ this.image,  this.text});

  final String text;
  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    int lines = 3;
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => NewsDetail(
                    image: image,
                    text: text,
                  )),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.98,
        height: MediaQuery.of(context).size.height * 0.39,
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: image,
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(5),
            color: Colors.black12),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              gradient: LinearGradient(
                  begin: FractionalOffset.center,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.0),
                    Colors.black
                  ],
                  stops: [
                    0.0,
                    0.1,
                    1,
                  ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                  padding:
                      EdgeInsets.only(top: 15, right: 10, left: 10, bottom: 10),
                  child: Text(
                    text,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class NewsDetail extends StatelessWidget {
  NewsDetail({ this.image,  this.text});

  ImageProvider image;
  String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Image(
                image: image,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
              ),
              SizedBox(
                height: 50,
              ),
              Text(text)
            ],
          ),
        ),
      ),
    );
  }
}

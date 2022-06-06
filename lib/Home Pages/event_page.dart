import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:senior_project/Home%20Pages/profile.dart';

import '../Theme/dark_light.dart';

class events_page extends StatefulWidget {
  const events_page({Key key}) : super(key: key);

  @override
  _events_pageState createState() => _events_pageState();
}

class _events_pageState extends State<events_page> {
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

    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          // backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          title: Text(""),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 20, bottom: 30),
            child: Center(
              child: Column(
                children: [
                  eventCard(
                    image: AssetImage("assets/melaku.jpeg"),
                    text: "Ethiopian national meuseum",
                    color: Colors.red,
                  ),
                  eventCard(
                    image: AssetImage("assets/event1.png"),
                    text: "Gaga bet",
                    color: Colors.pink,
                  ),
                  eventCard(
                    image: AssetImage("assets/event2.jpeg"),
                    text: "Skylight hotel",
                    color: Colors.red,
                  ),
                  eventCard(
                    image: AssetImage("assets/melaku.jpeg"),
                    text: "Hilton hotel",
                    color: Colors.blue,
                  ),
                  eventCard(
                    image: AssetImage("assets/melaku.jpeg"),
                    text: "Fendika",
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class eventCard extends StatelessWidget {
  const eventCard(
      { this.image,  this.text,  this.color});

  final String text;
  final ImageProvider image;
  final Color color;

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // width: MediaQuery.of(context).size.width * 0.48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                color: Color(0xFF082534)),
            padding: EdgeInsets.only(top: 4, right: 10, left: 10, bottom: 4),
            child: Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  letterSpacing: 2,
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                  fontSize: 12),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.98,
            height: MediaQuery.of(context).size.height * 0.39,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Color(0xFF082534),
            ),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //   mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(30)),
                    child: Image(
                      width: MediaQuery.of(context).size.width * 0.96,
                      height: MediaQuery.of(context).size.height * 0.39,
                      fit: BoxFit.fill,
                      image: image,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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

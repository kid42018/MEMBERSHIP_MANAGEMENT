import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

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

  List<Widget> images = [
    Image(
      image: AssetImage('assets/melaku.jpeg'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('assets/event2.jpeg'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('assets/event1.png'),
      fit: BoxFit.cover,
    ),
  ];
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
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text('',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: "Poppins")))),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: CarouselSlider(
                      options: CarouselOptions(
                          //scrollDirection: Axis.vertical,
                          enlargeCenterPage: false,
                          height: MediaQuery.of(context).size.height * 0.32,
                          autoPlay: true,
                          autoPlayAnimationDuration: Duration(seconds: 2),
                          autoPlayInterval: Duration(seconds: 3)),
                      items: images,
                    ),
                  ),
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
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(8.0),
              height: MediaQuery.of(context).size.height * 0.1,
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
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('What\'s new?',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: "Poppins"))),
            ),
          ],
        ),
      ),
    );
  }
}

class eventCard extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  eventCard({
     this.image,
     this.text,
     this.color,
    this.info = false,
    this.description =
        " This week will be the week we award a great mentor and a great motivation to us all at Hilton hotel addis ababa  his week will be the week we award a great mentor and a great motivation to us all at Hilton hotel addis ababa  his week will be the week we award a great mentor and a great motivation to us all at Hilton hotel addis ababa  his week will be the week we award a great mentor and a great motivation to us all at Hilton hotel addis ababa",
  });

  final String text;
  final String description;
  final ImageProvider image;
  final Color color;
  bool info;

  @override
  State<eventCard> createState() => _eventCardState();
}

class _eventCardState extends State<eventCard> {
  @override
  Widget build(BuildContext context) {
    int lines = 3;
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NewsDetail(
                          image: widget.image,
                          text: widget.text,
                        )),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   // width: MediaQuery.of(context).size.width * 0.48,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.only(
                //       topLeft: Radius.circular(5),
                //       topRight: Radius.circular(5),
                //     ),
                //     //color: color,
                //     color: Color(0xFF082534),
                //   ),
                //   padding:
                //       EdgeInsets.only(top: 4, right: 10, left: 10, bottom: 4),
                //   child: Text(
                //     widget.text,
                //     maxLines: 1,
                //     overflow: TextOverflow.ellipsis,
                //     style: TextStyle(
                //         letterSpacing: 2,
                //         color: Colors.white,
                //         fontFamily: "Poppins",
                //         fontWeight: FontWeight.w700,
                //         fontSize: 12),
                //   ),
                // ),
                Container(
                  //  width: MediaQuery.of(context).size.width * 0.98,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.39,
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    //  color: color,
                    color: Color(0xFF082534),
                    boxShadow: [
                      BoxShadow(
                        // color: color.withOpacity(0.8),
                        color: isDarkMode
                            ? Color(0xFF082534)
                            : Colors.black.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: Container(
                    child: Stack(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(10),
                          ),
                          child: Image(
                            // width: MediaQuery.of(context).size.width * 0.98,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.39,
                            fit: BoxFit.fill,
                            image: widget.image,
                          ),
                        ),
                        widget.info == false
                            ? Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (widget.info == true)
                                          widget.info = false;
                                        else if (widget.info == false)
                                          widget.info = true;
                                      });
                                    },
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black
                                                        .withOpacity(0.3),
                                                    blurRadius: 5.0,
                                                  ),
                                                ]),
                                            child: Icon(
                                              Icons.info,
                                              color: Colors.white,
                                              size: 35,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Container()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          widget.info == true
              ? Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: isDarkMode
                        ? Colors.black.withOpacity(0.3)
                        : Colors.white,
                    boxShadow: [
                      isDarkMode
                          ? BoxShadow(
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.2),
                              spreadRadius: 0,
                              blurRadius: 0,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            )
                          : BoxShadow(
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.2),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                    ],
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(
                          top: 15, right: 10, left: 10, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          widget.info == true
                              ? GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (widget.info == true)
                                        widget.info = false;
                                    });
                                  },
                                  child: Icon(
                                    Icons.close,
                                    color: isDarkMode
                                        ? Colors.white
                                        : Colors.black,
                                    size: 30,
                                  ),
                                )
                              : Container(),
                          Text(
                            widget.description,
                            maxLines: 30,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: isDarkMode ? Colors.white : Colors.black,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700,
                                fontSize: 11.6),
                          ),
                        ],
                      )),
                )
              : Container()
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

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:senior_project/apply_form.dart';

import 'ProfilePic.dart';

class profile_page extends StatefulWidget {
  profile_page(
      { this.ID,
     this.image,
      this.firstName,
      this.lastName});

  final String firstName;
  final String lastName;
  final ImageProvider image;
  final int ID;

  @override
  _profile_pageState createState() => _profile_pageState();
}

class _profile_pageState extends State<profile_page> {
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    bool isApproved = false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          elevation: 3,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back_ios,
              color: Theme.of(context).primaryColor,
            ),
          ),
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          title: Text(
            "Profile",
            style: TextStyle(
                fontFamily: "Poppins", color: Theme.of(context).primaryColor),
          ),
        ),
        body: SafeArea(
          bottom: true,
          child: Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Hero(
                  tag: "picture",
                  child: Center(
                    child: Card(
                      child: CircleAvatar(
                        maxRadius: 54.0,
                        backgroundImage: widget.image,
                      ),
                      elevation: 18.0,
                      shape: CircleBorder(),
                      clipBehavior: Clip.antiAlias,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    //color: Theme.of(context).primaryColor.withOpacity(0.05),
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
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      isApproved
                          ? QrImage(
                              data: widget.firstName +
                                  " " +
                                  widget.lastName +
                                  "\n" +
                                  widget.ID.toString(),
                              version: QrVersions.auto,
                              size: 100,
                              backgroundColor: isDarkMode
                                  ? Colors.white.withOpacity(1)
                                  : Colors.white,
                              gapless: true,
                            )
                          : GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  PageTransition(
                                      child: applyform(),
                                      type: PageTransitionType.rightToLeft)),
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 2, color: Colors.black)
                                  ],
                                  borderRadius: BorderRadius.circular(5),
                                  color: isDarkMode
                                      ? Colors.white.withOpacity(0.9)
                                      : Color(0xFF082534),
                                ),
                                //width: MediaQuery.of(context).size.width * 0.3,
                                height: MediaQuery.of(context).size.width * 0.1,
                                padding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 15),
                                child: Center(
                                    child: Text(
                                  "Apply for EDAA Membership",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      letterSpacing: 2,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: isDarkMode
                                          ? Colors.black
                                          : Colors.white),
                                )),
                              ),
                            ),
                      Text(widget.firstName + " " + widget.lastName,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16,
                              letterSpacing: 1,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold)),
                      isApproved
                          ? Text("#" + widget.ID.toString(),
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.6),
                                  fontWeight: FontWeight.bold))
                          : Container()
                    ],
                  ),
                ),
                Container(
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(15),
                  //   color: Theme.of(context).primaryColor.withOpacity(0.05),
                  // ),
                  decoration: BoxDecoration(
                    //color: Theme.of(context).primaryColor.withOpacity(0.05),
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
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: MediaQuery.of(context).size.height * 0.434,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Setting_Cards(
                            icon: Icons.settings,
                            color: Colors.green,
                            onPressed: () {
                              print("l");
                            },
                            text: "setting"),
                        Setting_Cards(
                            icon: Icons.person,
                            color: Colors.orange,
                            onPressed: () {
                              print("l");
                            },
                            text: "setting 2"),
                        Setting_Cards(
                            icon: Icons.home,
                            color: Colors.blue,
                            onPressed: () {
                              print("l");
                            },
                            text: "setting 3"),
                        Setting_Cards(
                            icon: Icons.settings,
                            color: Colors.green,
                            onPressed: () {
                              print("l");
                            },
                            text: "setting"),
                        Setting_Cards(
                            icon: Icons.person,
                            color: Colors.orange,
                            onPressed: () {
                              print("l");
                            },
                            text: "setting 2"),
                        Setting_Cards(
                            icon: Icons.home,
                            color: Colors.blue,
                            onPressed: () {
                              print("l");
                            },
                            text: "setting 3"),
                        Setting_Cards(
                            icon: Icons.settings,
                            color: Colors.green,
                            onPressed: () {
                              print("l");
                            },
                            text: "setting"),
                        Setting_Cards(
                            icon: Icons.person,
                            color: Colors.orange,
                            onPressed: () {
                              print("l");
                            },
                            text: "setting 2"),
                        Setting_Cards(
                            icon: Icons.home,
                            color: Colors.blue,
                            onPressed: () {
                              print("l");
                            },
                            text: "setting 3"),
                        Setting_Cards(
                            icon: Icons.food_bank,
                            color: Colors.red,
                            onPressed: () {
                              print("l");
                            },
                            text: "setting 4"),
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

class Setting_Cards extends StatefulWidget {
  Setting_Cards(
      { this.text,
       this.onPressed,
       this.icon,
       this.color});

  String text;
  Function onPressed;
  IconData icon;
  Color color;

  @override
  _Setting_CardsState createState() => _Setting_CardsState();
}

class _Setting_CardsState extends State<Setting_Cards> {
  bool nightmode = false;

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    return GestureDetector(
        onTap: () {
          widget.onPressed;
        },
        child: Container(
          margin: EdgeInsets.only(top: 1),
          width: MediaQuery.of(context).size.width * 0.95,
          height: MediaQuery.of(context).size.height * 0.062,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0, right: 10),
                          child: Text(
                            widget.text,
                            style: TextStyle(
                                color: isDarkMode
                                    ? Colors.white.withOpacity(0.8)
                                    : Colors.black.withOpacity(0.7),
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins",
                                fontSize: 16),
                          ),
                        ),
                        Divider(
                          color: isDarkMode
                              ? Colors.white.withOpacity(0.3)
                              : Colors.black.withOpacity(0.2),
                          thickness: 0.5,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 17.0),
                        child: Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: widget.color,
                          ),
                          child: Icon(widget.icon,
                              size: 23.5,
                              //  color: Color.fromRGBO(15, 15, 72, 1),
                              color: Colors.white),
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 0,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
// Align(
//                     alignment: Alignment.center,
//                     child: Container(
//                       margin: EdgeInsets.only(top: 10),
//                       height: MediaQuery.of(context).size.height * 0.13,
//                       width: MediaQuery.of(context).size.height * 0.13,
//                       decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           image: DecorationImage(
//                               image: AssetImage('assets/melaku.jpeg'),
//                               fit: BoxFit.cover)),
//                       child: GestureDetector(
//                         onTap: () {
//                           Navigator.push(context, MaterialPageRoute(
//                               builder: (BuildContext context) {
//                             return ProfilePic(
//                               image: AssetImage('assets/melaku.jpeg'),
//                             );
//                           }));
//                         },
//                       ),
//                     ),
//                   ),
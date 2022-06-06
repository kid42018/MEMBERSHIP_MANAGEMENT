import 'dart:ui';
import 'package:floating_navbar/floating_navbar.dart';
import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_project/Presentation/Routes/app_router.dart';
import 'package:senior_project/Presentation/Theme/dark_light.dart';
import 'package:senior_project/registration_form.dart';

import 'event_page.dart';
import 'news_page.dart';

class main_page extends StatefulWidget {
  const main_page({Key key}) : super(key: key);

  @override
  _main_pageState createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
  int currentIndex = 0;
  Color appColor = Color.fromRGBO(15, 15, 72, 1);

  @override
  Widget build(BuildContext context) {
    final AppRouter _apr = AppRouter();
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    return WillPopScope(
      onWillPop: () async {
        if (Navigator.of(context).userGestureInProgress)
          return false;
        else
          return true;
      },
      child: MaterialApp(
        themeMode: ThemeMode.system,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        onGenerateRoute: _apr.appRouter,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          bottomNavigationBar: FloatingNavBar(
            //iconSize: 25,
            resizeToAvoidBottomInset: false,
            color: Theme.of(context).bottomAppBarColor,
            selectedIconColor: Theme.of(context).iconTheme.color,
            unselectedIconColor:
                Theme.of(context).primaryColor.withOpacity(0.4),
            items: [
              FloatingNavBarItem(
                  iconData: Icons.home_outlined, page: news_page(), title: ''),
              FloatingNavBarItem(
                  iconData: Icons.local_hospital_outlined,
                  page: events_page(),
                  title: ''),
              FloatingNavBarItem(
                  iconData: Icons.alarm, page: news_page(), title: ''),
            ],
            horizontalPadding: 10.0,
            // verticalPadding: 0,
            hapticFeedback: true,
            showTitle: false,
          ),

          // body: Stack(
          //   children: [
          //     // Container(
          //     //   child: IndexedStack(
          //     //     children: pages,
          //     //     index: currentIndex,
          //     //   ),
          //     // ),
          //     GestureDetector(
          //       onTap: () => print("pppt"),
          //       child: Container(
          //         margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          //         decoration: BoxDecoration(
          //           boxShadow: [
          //             BoxShadow(blurRadius: 0.4, color: Colors.white)
          //           ],
          //           borderRadius: BorderRadius.circular(5),
          //           color: Color(0xFF082534),
          //         ),
          //         //width: MediaQuery.of(context).size.width * 0.3,
          //         height: MediaQuery.of(context).size.width * 0.1,
          //         padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          //         child: Center(
          //             child: Text(
          //           "Apply for Membership",
          //           style: TextStyle(
          //               fontFamily: "Poppins",
          //               letterSpacing: 2,
          //               fontSize: 14,
          //               fontWeight: FontWeight.bold,
          //               color: Colors.white),
          //         )),
          //       ),
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}

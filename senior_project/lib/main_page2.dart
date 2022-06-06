// import 'package:floating_navbar/floating_navbar.dart';
// import 'package:floating_navbar/floating_navbar_item.dart';
// import 'package:flutter/material.dart';
// import 'package:senior_project/registration_form.dart';
// import 'Logic/Authentication/home.dart';
// import 'Presentation/Home Pages/news_page.dart';
// import 'Presentation/Theme/dark_light.dart';

// class main_page2 extends StatefulWidget {
//   const main_page2({Key? key}) : super(key: key);

//   @override
//   _main_page2State createState() => _main_page2State();
// }

// class _main_page2State extends State<main_page2> {
//   int currentIndex = 0;
//   Color appColor = Color.fromRGBO(15, 15, 72, 1);
//   List<Widget> pages = [
//     Registration_Page(),
//     news_page(),
//     news_page(),
//     news_page()
//   ];

//   @override
//   Widget build(BuildContext context) {
//     var brightness = MediaQuery.of(context).platformBrightness;
//     bool isDarkMode = brightness == Brightness.dark;

//     return WillPopScope(
//       onWillPop: () async {
//         if (Navigator.of(context).userGestureInProgress)
//           return false;
//         else
//           return true;
//       },
//       child: MaterialApp(
//         themeMode: ThemeMode.system,
//         theme: MyThemes.lightTheme,
//         darkTheme: MyThemes.darkTheme,
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           backgroundColor: Colors.transparent,
//           bottomNavigationBar: FloatingNavBar(
//             iconSize: 15,
//             resizeToAvoidBottomInset: false,
//             color: Theme.of(context).bottomAppBarColor,
//             selectedIconColor: Theme.of(context).iconTheme.color!,
//             unselectedIconColor:
//                 Theme.of(context).primaryColor.withOpacity(0.4),
//             items: [
//               FloatingNavBarItem(
//                   iconData: Icons.home_outlined,
//                   page: news_page(),
//                   title: 'home'),
//               FloatingNavBarItem(
//                   iconData: Icons.local_hospital_outlined,
//                   page: Registration_Page(),
//                   title: 'Doctors'),
//               FloatingNavBarItem(
//                   iconData: Icons.alarm, page: news_page(), title: 'Reminders'),
//               FloatingNavBarItem(
//                   iconData: Icons.settings,
//                   page: start_page(),
//                   title: 'Records'),
//             ],
//             horizontalPadding: 10.0,
//             verticalPadding: 1,
//             hapticFeedback: true,
//             showTitle: false,
//           ),
//           body: Stack(
//             children: [
//               Container(
//                 child: IndexedStack(
//                   children: pages,
//                   index: currentIndex,
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () => print("pt"),
//                 child: Container(
//                   margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                   decoration: BoxDecoration(
//                     boxShadow: [
//                       BoxShadow(blurRadius: 0.4, color: Colors.white)
//                     ],
//                     borderRadius: BorderRadius.circular(5),
//                     color: Color(0xFF082534),
//                   ),
//                   //width: MediaQuery.of(context).size.width * 0.3,
//                   height: MediaQuery.of(context).size.width * 0.1,
//                   padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
//                   child: Center(
//                       child: Text(
//                     "Apply for Membership",
//                     style: TextStyle(
//                         fontFamily: "Poppins",
//                         letterSpacing: 2,
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   )),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

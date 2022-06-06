import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:senior_project/Logic/Authentication/home.dart';
import 'package:senior_project/Logic/Authentication/login.dart';
import 'package:senior_project/Logic/Authentication/signup.dart';
import 'package:senior_project/Presentation/Home%20Pages/event_page.dart';
import 'package:senior_project/Presentation/Home%20Pages/main_page.dart';
import 'package:senior_project/Presentation/Home%20Pages/news_page.dart';
import 'package:senior_project/Presentation/Home%20Pages/profile.dart';

class AppRouter {
  Route appRouter(RouteSettings rSetting) {
    switch (rSetting.name) {
      case '/':
        return PageTransition(
            child: start_page(), type: PageTransitionType.rightToLeft);
        break;

      case '/login_page':
        return PageTransition(
            child: login_page(), type: PageTransitionType.rightToLeft);
        break;

      case '/signup_page':
        return PageTransition(
            child: signup_page(), type: PageTransitionType.rightToLeft);
        break;

      case '/main_page':
        return MaterialPageRoute(builder: (context) => main_page());
        break;

      // case '/news_page':
      //   return PageTransition(
      //       child: news_page(), type: PageTransitionType.rightToLeft);
      //   break;
      // case '/event_page':
      //   return PageTransition(
      //       child: events_page(), type: PageTransitionType.rightToLeft);
      //   break;

      case '/profile_page':
        return PageTransition(
            child: profile_page(
              ID: 123456,
              firstName: "Abel",
              lastName: "Dinku",
              image: const AssetImage('logo.png'),
            ),
            type: PageTransitionType.rightToLeft);
        break;

      default:
        return null;
    }
  }
}

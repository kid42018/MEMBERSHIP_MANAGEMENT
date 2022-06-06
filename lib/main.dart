import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:senior_project/Authentication/Home.dart';
import 'package:senior_project/Authentication/home.dart';
import 'package:senior_project/Authentication/login.dart';
import 'package:senior_project/Authentication/signup.dart';
import 'package:senior_project/Home%20Pages/main_page.dart';
import 'package:senior_project/apply_form.dart';
import 'Theme/dark_light.dart';
import 'Authentication/home.dart' as l;
import 'Authentication/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      debugShowCheckedModeBanner: false,
      home: l.home_page(),
    );
  }
}

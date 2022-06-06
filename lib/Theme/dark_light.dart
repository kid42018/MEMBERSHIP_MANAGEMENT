import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(
      colorScheme: ColorScheme.dark(),
      primaryColor: Colors.white,
      hintColor: Colors.white.withOpacity(0.7),
      primaryColorLight: Colors.black,
      backgroundColor: Colors.black,
      bottomAppBarColor: Color(0xFF082534),
      appBarTheme: AppBarTheme(backgroundColor: Color(0xFF082534)),
      iconTheme: IconThemeData(color: Colors.white));

  static final lightTheme = ThemeData(
      colorScheme: ColorScheme.light(),
      bottomAppBarColor: Colors.white,
      primaryColor: Colors.black,
      primaryColorLight: Colors.white,
      hintColor: Color(0xFF082534).withOpacity(0.7),
      backgroundColor: Colors.white,
      appBarTheme: AppBarTheme(backgroundColor: Colors.white),
      iconTheme: IconThemeData(color: Color(0xFF082534)));
}

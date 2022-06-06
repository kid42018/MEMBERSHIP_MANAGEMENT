import 'package:flutter/material.dart';

class TextFieldWithLessNumber extends StatelessWidget {
  const TextFieldWithLessNumber({this.Name, this.short, this.hint});

  final String Name;
  final bool short;
  final String hint;

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    return Container(
      width: short == true ? 60 : 150,
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

class TextFieldNew extends StatelessWidget {
  const TextFieldNew({this.Name, this.short, this.controller});

  final String Name;
  final bool short;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    return Container(
      width: 250,
      child: TextField(
        controller: controller,
        cursorColor: Color(0xFF082534),
        decoration: InputDecoration(
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

import 'package:flutter/material.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primarySwatch: Colors.orange,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.grey),
    textTheme: const TextTheme(
      //AppBar
      headline1: TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
      //bodyText
      bodyText1: TextStyle(color: Colors.black, fontSize: 15),
    ),
  );
}

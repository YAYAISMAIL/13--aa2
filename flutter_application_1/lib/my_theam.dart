import 'package:flutter/material.dart';

class MyTheme {
  static const Color primary = Color(0xffB7935F);
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);
  static const Color blueBlack = Color(0xff141A2E);
  static const Color trans = Colors.transparent;
  static const Color priamaryDark = Color(0xff141a2e);
  static const Color priamaryDarkFont = Color(0xfffacc1d);

  //font size:
  static const TextStyle fs_16 = TextStyle(fontSize: 16);
  static const TextStyle fs_18 = TextStyle(fontSize: 18);
  static const TextStyle fs_20 = TextStyle(fontSize: 20);
  static const TextStyle fs_25 = TextStyle(fontSize: 25);
  static const TextStyle fs_30 = TextStyle(fontSize: 30);
  static const TextStyle fs_38 = TextStyle(fontSize: 38);

  //Light Mode:-
  static ThemeData myTheme = ThemeData(
      primaryColor: primary,
      //scaffold
      scaffoldBackgroundColor: trans,

      //appBar
      appBarTheme: const AppBarTheme(
          backgroundColor: trans,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: black),
          elevation: 0,
          iconTheme: IconThemeData(
            color: black,
            size: 35,
          )),

      //Text Theme
      textTheme: const TextTheme(
          titleLarge: TextStyle(
              fontSize: 38, fontWeight: FontWeight.bold, color: primary),
          titleMedium: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: black),
          titleSmall: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w400, color: black)),

      //Bottom Navigation
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: black,
          selectedLabelStyle: TextStyle(color: black),
          selectedIconTheme: IconThemeData(size: 30)));

  //Dark Mode:-
  static ThemeData myThemeDark = ThemeData(
      primaryColor: priamaryDark,
      //scaffold
      scaffoldBackgroundColor: trans,

      //appBar
      appBarTheme: const AppBarTheme(
          backgroundColor: trans,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: black),
          elevation: 0,
          iconTheme: IconThemeData(
            color: white,
            size: 35,
          )),

      //Text Theme
      textTheme: const TextTheme(
          titleLarge: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.bold,
              color: priamaryDarkFont),
          titleMedium: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: white),
          titleSmall: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w400, color: white)),

      //Bottom Navigation
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: priamaryDarkFont,
        selectedLabelStyle: TextStyle(color: black),
        selectedIconTheme: IconThemeData(size: 30),
        unselectedItemColor: white,
      ));
}

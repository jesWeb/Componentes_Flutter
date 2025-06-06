import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.blue;
  static const Color icons = Colors.black38;
  static const Color btn = Colors.black;
  static const Color tool = Colors.amberAccent;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: icons,
      appBarTheme: AppBarTheme(color: primary, elevation: 0),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: btn,
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: tool, elevation: 6),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo[700],
            shape: const StadiumBorder(),
            elevation: 0),
      ),

     
      inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  topLeft: Radius.circular(5))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  topLeft: Radius.circular(5))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  topLeft: Radius.circular(5)))));
}

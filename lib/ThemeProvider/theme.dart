import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.grey[400],
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(color: Colors.white),
      color: Colors.black,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        color: Colors.black,
      ),
        bodyText1: const TextStyle(
            color: Colors.black,
        )
    )
  );


  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      backgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        color: Colors.black,
        titleTextStyle: TextStyle(color: Colors.white),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
          bodyText1: const TextStyle(
              color: Colors.black
          )
      )
  );
}
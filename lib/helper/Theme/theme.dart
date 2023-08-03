import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  textTheme: const TextTheme(
    bodySmall: TextStyle(fontSize: 12, color: Colors.black),
    bodyMedium: TextStyle(fontSize: 14, color: Colors.black),
    bodyLarge: TextStyle(fontSize: 16, color: Colors.black),
    titleSmall: TextStyle(fontSize: 13, color: Colors.black),
    titleLarge: TextStyle(fontSize: 18, color: Colors.black),
    titleMedium: TextStyle(fontSize: 18, color: Colors.black),
  ),
  appBarTheme: const AppBarTheme(backgroundColor: Colors.white, centerTitle: true,
  titleTextStyle: TextStyle(fontSize: 16),
  backwardsCompatibility: false,
  systemOverlayStyle: SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
  iconTheme: IconThemeData()
  )
);
ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.black,
    textTheme: const TextTheme(
      bodySmall: TextStyle(fontSize: 12, color: Colors.white),
      bodyMedium: TextStyle(fontSize: 14, color: Colors.white),
      bodyLarge: TextStyle(fontSize: 16, color: Colors.white),
      titleSmall: TextStyle(fontSize: 13, color: Colors.white),
      titleLarge: TextStyle(fontSize: 18, color: Colors.white),
      titleMedium: TextStyle(fontSize: 18, color: Colors.white),
    ),iconTheme: const IconThemeData(color: Colors.white),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      centerTitle: true,
      titleTextStyle: TextStyle(fontSize: 16),
      backwardsCompatibility: false,
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
    )
);

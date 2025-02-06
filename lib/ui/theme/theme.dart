import 'package:flutter/material.dart';

final primaryColor = Colors.blue;

final themeData = ThemeData();

final textTheme = TextTheme();

final darkTheme = ThemeData(
  useMaterial3: true,
  primaryColor: primaryColor,
  colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor, brightness: Brightness.dark),
  scaffoldBackgroundColor: Colors.black,
  textTheme: textTheme,
);

final lightTheme = ThemeData(
  useMaterial3: true,
  primaryColor: primaryColor,
  colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor, brightness: Brightness.light),
  scaffoldBackgroundColor: Colors.white,
  textTheme: textTheme,
);

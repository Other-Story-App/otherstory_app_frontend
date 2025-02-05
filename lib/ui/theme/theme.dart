import 'package:flutter/material.dart';

final primaryColor = Colors.blue;

final themeData = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor), // Тёмная тема: brightness: Brightness.dark
);

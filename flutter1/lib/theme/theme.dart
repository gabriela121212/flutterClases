import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: const Color.fromARGB(255, 255, 255, 255),
    primary: const Color.fromARGB(255, 0, 0, 0),
    secondary: const Color.fromARGB(255, 0, 0, 0),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 243, 8, 8),
      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: const Color.fromARGB(255, 247, 9, 9),
    foregroundColor: Colors.white,
  ),
);

ThemeData darkmode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.grey.shade800,
    primary: Colors.grey.shade300,
    secondary: Colors.grey.shade400,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 240, 7, 53),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: const Color.fromARGB(255, 248, 15, 11),
    foregroundColor: Colors.white,
  ),
);

ThemeData lightmode2 = ThemeData(brightness: Brightness.light);
ThemeData darkmode2 = ThemeData();

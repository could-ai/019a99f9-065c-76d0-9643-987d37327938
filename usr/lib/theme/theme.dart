import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.green,
    brightness: Brightness.light,
  ),
  useMaterial3: true,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.green[700],
    foregroundColor: Colors.white,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.green[600],
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      textStyle: const TextStyle(fontSize: 16),
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
     backgroundColor: Colors.green[600],
     foregroundColor: Colors.white,
  )
);

final darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.green,
    brightness: Brightness.dark,
  ),
  useMaterial3: true,
   appBarTheme: AppBarTheme(
    backgroundColor: Colors.green[900],
    foregroundColor: Colors.white,
  ),
   elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.green[700],
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      textStyle: const TextStyle(fontSize: 16),
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
     backgroundColor: Colors.green[700],
     foregroundColor: Colors.white,
  )
);

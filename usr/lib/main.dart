import 'package:flutter/material.dart';
import 'package:couldai_user_app/pages/login_page.dart';
import 'package:couldai_user_app/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SN Investments Loan Management System',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light, // This can be changed based on user settings
      home: const LoginPage(),
    );
  }
}

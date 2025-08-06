import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      primary: Colors.black,
      secondary: Colors.grey.shade800,
      background: Colors.white,
      surface: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 22,
        letterSpacing: 0.5,
      ),
    ),
    tabBarTheme: TabBarThemeData(
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(width: 2, color: Colors.black),
        insets: EdgeInsets.symmetric(horizontal: 24),
      ),
      labelStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.grey.shade400),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontFamily: 'sans-serif', color: Colors.black, fontSize: 18),
      bodyMedium: TextStyle(fontFamily: 'sans-serif', color: Colors.black87, fontSize: 16),
      titleLarge: TextStyle(fontFamily: 'sans-serif', color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:gobble/utils/app_color.dart';

class AppTheme {
  static ThemeData LightTheme() => ThemeData(
        fontFamily: 'Poppins',
        iconTheme: const IconThemeData(
          color: Color(0xFF23AA49),
          size: 28,
        ),
        buttonColor: Color(0xFF23AA49),
        textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
            alignment: Alignment.center,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          primaryContainer: const Color(0xFF2C85E5),
          seedColor: Color(0xFF2C85E5),
          brightness: Brightness.light,
          primary: Color(0xFF23AA49),
          onPrimary: Color(0xFF2C85E5),
          surface: Color(0xff263238),
          onSurface: Color(0xFFEDEFF3),
          background: Color(0xFFFFFFFF),
          onBackground: Color(0xFFB7BBC5),
          error: Colors.redAccent,
          onSecondary: Color(0xFF23AA49),
        ),
      );

  static ThemeData DarkTheme() => ThemeData(
        fontFamily: 'Poppins',
        iconTheme: const IconThemeData(
          color: Color(0xFFEDEFF3),
          size: 28,
        ),
        textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
            alignment: Alignment.center,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          primaryContainer: const Color(0xFF282B33),
          seedColor: Color(0xFF003BBB),
          brightness: Brightness.light,
          primary: Color(0xFF1D1D1F),
          onPrimary: Color(0xFF282833),
          surface: Colors.white,
          onSurface: Color(0xFFEDEFF3),
          background: Color(0xFF46465A),
          onBackground: Color(0xFF282B33),
          onSecondary: Colors.amber,
          error: Colors.redAccent,
        ),
      );
}

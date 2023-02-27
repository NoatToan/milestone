import 'package:flutter/material.dart';

class ThemeDefault {
  static ThemeData get themeData => ThemeData(
        primaryColor: Colors.blueAccent,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.white,
        ),
        brightness: Brightness.light,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            side: MaterialStateProperty.resolveWith<BorderSide>(
                (states) => const BorderSide(color: Colors.blueAccent)),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (states) => Colors.blueAccent),
            shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
              return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15));
            }),
            textStyle: MaterialStateProperty.resolveWith<TextStyle>(
              (states) => const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
}

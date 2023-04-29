import 'package:flutter/material.dart';

class ThemeContrast {
  static ThemeData get themeData => ThemeData(
        primaryColor: Colors.black12,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.black,
        ),
        brightness: Brightness.dark,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            side: MaterialStateProperty.resolveWith<BorderSide>(
                (states) => const BorderSide(color: Colors.black)),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (states) => Colors.black),
            shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
              return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15));
            }),
            textStyle: MaterialStateProperty.resolveWith<TextStyle>(
              (states) => const TextStyle(
                color: Colors.white70,
              ),
            ),
          ),
        ),
        primarySwatch: Colors.red,
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black54,
          modalBarrierColor: Colors.black45,
        ),
      );
}

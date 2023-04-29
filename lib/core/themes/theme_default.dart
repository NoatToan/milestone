import 'package:flutter/material.dart';

class ThemeDefault {
  static ThemeData get themeData => ThemeData(
        primaryColor: Colors.black12,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.white,
        ),
        brightness: Brightness.light,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            side: MaterialStateProperty.resolveWith<BorderSide>(
                (states) => const BorderSide(color: Colors.black12)),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (states) => Colors.black12),
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
        indicatorColor: Colors.black12,
        primarySwatch: Colors.grey,
        dividerColor: Colors.grey,
        splashColor: Colors.redAccent.withOpacity(.5),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black54,
          modalBarrierColor: Colors.black45,
        ),
      );
}

import 'package:flutter/material.dart';

class LightTheme {
  //Genellikle color işlemleri yapılır
  final _lightColor = _LightColor();

  late final ThemeData theme;

  LightTheme() {
    theme = ThemeData(
        appBarTheme: AppBarTheme(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)))),
        scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.green,
        ),
        buttonTheme: ButtonThemeData(colorScheme: ColorScheme.light(onSecondary: _lightColor.blueMania)),
        colorScheme: ColorScheme.light(),
        textTheme: ThemeData.light().textTheme.copyWith(subtitle1: TextStyle(fontSize: 25, color: Colors.black)),
        checkboxTheme: CheckboxThemeData(
            fillColor: MaterialStateProperty.all(_lightColor.blueMania),
            side: BorderSide(color: _lightColor._textColor)));
  }
}

class _LightColor {
  final Color _textColor = Color.fromARGB(255, 162, 13, 13);
  final Color blueMania = Color.fromARGB(95, 188, 248, 1);
}

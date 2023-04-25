import 'package:flutter/material.dart';

part 'color_schemes.g.dart';

ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    colorScheme: _lightColorScheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _lightColorScheme.primary,
        foregroundColor: Colors.white,
        elevation: 30,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
      foregroundColor: Colors.white,
    )),
    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 0.9),
        fontSize: 20,
      ),
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(255, 255, 255, 1))),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color.fromRGBO(255, 177, 43, 1)),
      ),
    ),
    textTheme: const TextTheme(
      //texto digitado
      titleMedium: TextStyle(fontSize: 20, color: Colors.white),
      //texto do elevated Button
      labelLarge: TextStyle(fontSize: 20, color: Colors.white),
    ));

ThemeData get darkTheme => ThemeData(
      useMaterial3: true,
      colorScheme: _darkColorScheme,
    );

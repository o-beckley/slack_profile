import 'package:flutter/material.dart';

TextTheme textTheme = const TextTheme(
  displayLarge: TextStyle(
    fontSize: 50,
    fontWeight: FontWeight.w500,
  ),
  displayMedium: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w300
  ),
  labelLarge: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w300,
    color: Colors.white
  )
);

ThemeData theme = ThemeData(textTheme: textTheme);

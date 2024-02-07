import 'package:flutter/material.dart';

const List<Color> colors = [
  Colors.blue,
  Colors.teal,
  Colors.red,
  Colors.purple,
  Colors.pinkAccent
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }): assert(selectedColor >= 0, 'Selected color must be equal or greater than 0'),
      assert(selectedColor < colors.length, 'Selected color must be less or equal than ${colors.length - 1}');

  ThemeData getTheme() => ThemeData(
    appBarTheme: const AppBarTheme(
      centerTitle: true
    ),
    colorSchemeSeed: colors[selectedColor],
    useMaterial3: true
  );
}
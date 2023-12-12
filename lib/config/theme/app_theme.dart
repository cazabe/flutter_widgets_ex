import 'package:flutter/material.dart';

const colorList = <Color>[Colors.blue, Colors.red, Colors.orange, Colors.pink];

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Selectede color must be greater than 0'),
        assert(selectedColor < colorList.length,
            'Selectede color must be less or equeal to color list.lengt');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));
}

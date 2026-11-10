import 'package:flutter/material.dart';

const Color couleurGraine = Color(0xFF2E7D6B);

ThemeData construireTheme(Brightness luminosite) {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: couleurGraine,
      brightness: luminosite,
    ),
  );
}

import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class CustomTheme {
  static ThemeData darkTheme() {
    return ThemeData.dark().copyWith();
  }

  static ThemeData lightTheme() {
    return ThemeData.light().copyWith();
  }
}

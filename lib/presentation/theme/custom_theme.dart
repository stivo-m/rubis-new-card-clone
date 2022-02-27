import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class CustomTheme {
  static ThemeData darkTheme() {
    return ThemeData.dark().copyWith(
      colorScheme: ColorScheme.dark(
        tertiary: Color(0xff00A15D),
        onTertiary: Colors.white,
        tertiaryContainer: Color(0xff007e4f),
      ),
    );
  }

  static ThemeData lightTheme() {
    return ThemeData.light().copyWith(
      colorScheme: ColorScheme.light(
        tertiary: Color(0xff00A15D),
        onTertiary: Colors.white,
        tertiaryContainer: Color(0xff007e4f),
      ),
    );
  }
}

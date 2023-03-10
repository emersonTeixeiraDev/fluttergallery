import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme() {
  final theme = ThemeData();
  final textTheme = GoogleFonts.montserratTextTheme(theme.textTheme);

  return ThemeData(
    textTheme: textTheme.copyWith(
      titleLarge: textTheme.titleLarge?.copyWith(
        fontSize: 20,
        color: Colors.black,
      ),
      bodyMedium: textTheme.bodyMedium?.copyWith(
        fontSize: 16,
      ),
      bodySmall: textTheme.bodySmall?.copyWith(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

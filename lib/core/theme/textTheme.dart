import 'package:flutter/material.dart';

import '../constants/assets/app_fonts.dart';

TextTheme get textTheme => TextTheme(
  displayLarge: TextStyle(
    fontSize: 44,
    fontFamily: AppFont.font.bold,
  ),
  displayMedium: TextStyle(
    fontSize: 420,
    fontFamily: AppFont.font.bold,
  ),
  displaySmall: TextStyle(
    fontSize: 40,
    fontFamily: AppFont.font.bold,
  ),
  headlineLarge: TextStyle(
    fontSize: 30,
    fontFamily: AppFont.font.samiBold,
  ),
  headlineMedium: TextStyle(
    fontSize: 28,
    fontFamily: AppFont.font.samiBold,
  ),
  headlineSmall: TextStyle(
    fontSize: 26,
    fontFamily: AppFont.font.medium,
  ),
  titleLarge: TextStyle(
    fontSize: 22,
    fontFamily: AppFont.font.medium,
  ),
  titleMedium: const TextStyle(
    fontSize: 20,
  ),
  titleSmall: const TextStyle(
    fontSize: 18,
  ),
  bodyLarge: const TextStyle(
    fontSize: 16,
  ),
  bodyMedium: const TextStyle(
    fontSize: 14,
  ),
  bodySmall: const TextStyle(
    fontSize: 12,
  ),
  labelLarge: const TextStyle(
    fontSize: 16,
  ),
  labelMedium: const TextStyle(
    fontSize: 14,
  ),
  labelSmall: const TextStyle(
    fontSize: 12,
  ),
);
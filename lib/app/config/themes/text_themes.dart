import 'package:flutter/material.dart';
import 'package:gym_app/app/config/app_constants.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = _buildTextTheme(AppColors.kBlack);
  static TextTheme darkTextTheme = _buildTextTheme(AppColors.kWhite);

  static TextTheme _buildTextTheme(Color color) {
    return TextTheme(
      displayLarge: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: color,
      ),
      displayMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: color,
      ),
      displaySmall: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: color,
      ),
      headlineMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: color,
      ),
      headlineSmall: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: color,
      ),
      titleLarge: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: color,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: color,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: color,
      ),
      labelLarge: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: color,
      ),
      labelSmall: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: color,
      ),
    );
  }
}

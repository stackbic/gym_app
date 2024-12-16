// theme.dart
import 'package:flutter/material.dart';
import 'package:gym_app/app/config/app_constants.dart';
import 'package:gym_app/app/config/themes/text_themes.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.kWhiteShade,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.kWhiteShade,
      surfaceTintColor: AppColors.kWhiteShade,
    ),
    textTheme: AppTextTheme.lightTextTheme,
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.kBlackBackground,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.kBlackBackground,
      surfaceTintColor: AppColors.kBlackBackground,
    ),
    textTheme: AppTextTheme.darkTextTheme,
  );
}

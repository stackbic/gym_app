import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym_app/app/config/themes/themes.dart';

class ThemeNotifier extends StateNotifier<ThemeData> {
  ThemeNotifier() : super(AppThemes.lightTheme);

  void toggleTheme() {
    if (state == AppThemes.lightTheme) {
      state = AppThemes.darkTheme;
    } else {
      state = AppThemes.lightTheme;
    }
  }
}

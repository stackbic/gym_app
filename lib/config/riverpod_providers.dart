import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym_app/modules/onboarding/presentation/controllers/mob_controllers/onboarding_mob_controller.dart';
import 'package:gym_app/modules/onboarding/presentation/controllers/mob_controllers/onboarding_mob_state.dart';
import 'package:gym_app/modules/splash/controllers/theme_controller.dart';
import '../modules/splash/controllers/splash_controller.dart';

class RiverpodProviders {
  // Di For Splash
  static final splashControllerProvider = NotifierProvider<SplashController, void>(
    () {
      return SplashController();
    },
  );
  // Di For Theme
  static final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeData>(
    (ref) {
      return ThemeNotifier();
    },
  );
  // Di For OnBoarding
  static final onBoardingProvider = StateNotifierProvider<OnboardingMobController, OnboardingMobState>(
    (ref) {
      return OnboardingMobController();
    },
  );
}

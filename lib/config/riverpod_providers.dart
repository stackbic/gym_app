import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym_app/modules/auth/domain/entities/auth_entity.dart';
import 'package:gym_app/modules/auth/presentation/controllers/auth_controllers.dart';
import 'package:gym_app/modules/onboarding/presentation/controllers/onboarding_controller.dart';
import 'package:gym_app/modules/onboarding/domain/entities/onboarding_entity.dart';
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
  static final onBoardingProvider = StateNotifierProvider<OnboardingController, OnboardingEntity>(
    (ref) {
      return OnboardingController();
    },
  );
  // Di For Auth
  static final authProvider = StateNotifierProvider<AuthController, AuthEntity>(
    (ref) {
      return AuthController();
    },
  );
}

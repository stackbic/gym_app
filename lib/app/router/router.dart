import 'package:flutter/material.dart';
import 'package:gym_app/app/router/router_constants.dart';
import 'package:gym_app/modules/auth/presentation/pages/auth.dart';
import 'package:gym_app/modules/home/presentation/pages/home.dart';
import 'package:gym_app/modules/splash/splash.dart';
import '../../modules/onboarding/presentation/pages/onboarding.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouterConstants.splashRoute:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case AppRouterConstants.onBoardingRoute:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case AppRouterConstants.authRoute:
        return MaterialPageRoute(
          builder: (_) => const AuthScreen(),
        );
      case AppRouterConstants.homeRoute:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
    }
  }
}

import 'package:flutter/material.dart';
import 'package:gym_app/app/router/router_constants.dart';
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
      default:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
    }
  }
}

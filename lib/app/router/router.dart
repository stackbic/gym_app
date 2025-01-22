import 'package:flutter/material.dart';
import 'package:gym_app/app/router/router_constants.dart';
import 'package:gym_app/modules/auth/presentation/pages/auth_mob/auth_mob.dart';
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
          builder: (_) => const AuthMob(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
    }
  }
}

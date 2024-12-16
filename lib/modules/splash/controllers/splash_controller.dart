import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym_app/app/router/router_constants.dart';

class SplashController extends Notifier<void> {
  // Timer Function For Splash Screen
  void splashTimer(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () async {
        Navigator.of(context).pushReplacementNamed(AppRouterConstants.onBoardingRoute);
      },
    );
  }

  @override
  void build() {
    // No need to build UI in controller
  }
}

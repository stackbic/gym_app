import 'package:flutter/material.dart';
import 'package:gym_app/app/widgets/responsive_widget/responsive_builder.dart';
import 'package:gym_app/modules/onboarding/presentation/pages/onboarding_mob/onboarding_mob.dart';
import 'package:gym_app/modules/onboarding/presentation/pages/onboarding_tab/onboarding_tab.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      mobile: OnboardingMob(),
      tablet: OnboardingTab(),
    );
  }
}

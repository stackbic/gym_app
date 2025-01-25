import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym_app/app/config/app_constants.dart';
import 'package:gym_app/config/riverpod_providers.dart';
import '../../../../../app/widgets/common_buttons_textforms/button_textforms.dart';
import 'onboard_container.dart';

class OnboardingMob extends StatefulWidget {
  const OnboardingMob({super.key});

  @override
  State<OnboardingMob> createState() => _OnboardingEntity();
}

class _OnboardingEntity extends State<OnboardingMob> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        //final onBoardingState = ref.watch(RiverpodProviders.onBoardingProvider);
        final onBoardingController = ref.read(RiverpodProviders.onBoardingProvider.notifier);
        //final themeController = ref.watch(RiverpodProviders.themeProvider.notifier);
        final themeState = ref.watch(RiverpodProviders.themeProvider);
        return Scaffold(
          body: SafeArea(
              child: OnboardContainer(
            themeState: themeState,
          )),
          bottomNavigationBar: FadeInLeft(
            child: Container(
              padding: AppPaddings.bottomnavP,
              color: AppColors.kWhite.withValues(
                alpha: 0.05,
              ),
              child: ButtonWidget(
                padding: const WidgetStatePropertyAll(AppPaddings.buttonPadding),
                text: "Get Started",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: AppColors.kWhite,
                    ),
                backgroundColor: const WidgetStatePropertyAll(AppColors.kPrimaryColor),
                borderRadius: BorderRadius.circular(15),
                onPressed: () {
                  onBoardingController.onNavigateAuth(context);
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

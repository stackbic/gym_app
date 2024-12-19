import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym_app/app/config/app_constants.dart';
import 'package:gym_app/app/widgets/appbar/appbar.dart';
import 'package:gym_app/config/riverpod_providers.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../app/widgets/common_buttons_textforms/button_textforms.dart';
import 'onboard_container.dart';

class OnboardingMob extends StatefulWidget {
  const OnboardingMob({super.key});

  @override
  State<OnboardingMob> createState() => _OnboardingMobState();
}

class _OnboardingMobState extends State<OnboardingMob> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final onBoardingState = ref.watch(RiverpodProviders.onBoardingProvider);
        final onBoardingController = ref.read(RiverpodProviders.onBoardingProvider.notifier);
        final PageController pageController = PageController(
          initialPage: onBoardingState.currentPage,
        );
        // Controller Logic
        pageController.addListener(() {
          final currentPage = pageController.page?.round() ?? 0;
          if (currentPage != onBoardingState.currentPage) {
            onBoardingController.updateCurrentPage(currentPage);
          }
        });
        return Scaffold(
          appBar: CommonAppBar(
            actions: [
              if (onBoardingController.shouldShowSkipButton())
                Padding(
                  padding: const EdgeInsets.only(
                    right: 30,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      pageController.animateToPage(
                        2,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Text(
                      "Skip",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ),
            ],
          ),
          body: SafeArea(
            child: Padding(
              padding: AppPaddings.backgroundP,
              child: PageView.builder(
                controller: pageController,
                itemCount: onBoardingState.onBoardTotalPage,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return OnboardContainer(
                    screenIndex: index,
                  );
                },
              ),
            ),
          ),
          bottomNavigationBar: Padding(
            padding: AppPaddings.bottomnavP,
            child: Column(
              spacing: 20,
              mainAxisSize: MainAxisSize.min,
              children: [
                SmoothPageIndicator(
                  controller: pageController,
                  count: onBoardingState.onBoardTotalPage,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    activeDotColor: AppColors.kPrimaryColor,
                    dotColor: AppColors.kPrimaryColor.withAlpha(
                      (0.5 * 255).round(),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ButtonWidget(
                    padding: const WidgetStatePropertyAll(AppPaddings.buttonPadding),
                    text: onBoardingController.shouldShowSkipButton() ? "Next" : "Get Started",
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: AppColors.kWhite,
                        ),
                    backgroundColor: const WidgetStatePropertyAll(AppColors.kPrimaryColor),
                    borderRadius: BorderRadius.circular(15),
                    onPressed: () {
                      final nextPage = pageController.page!.toInt() + 1;
                      if (nextPage < 3) {
                        pageController.animateToPage(
                          nextPage,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        // Handle navigation to the next screen or onboarding finish
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

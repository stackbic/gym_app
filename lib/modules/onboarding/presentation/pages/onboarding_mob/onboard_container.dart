import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/app/config/app_constants.dart';

class OnboardContainer extends StatelessWidget {
  const OnboardContainer({
    super.key,
    required this.screenIndex,
    required this.themeState,
  });
  final int screenIndex;
  final ThemeData themeState;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 5,
          child: SvgPicture.asset(
            screenIndex == 0
                ? AppImages.onBoarding1
                : screenIndex == 1
                    ? AppImages.onBoarding2
                    : AppImages.onBoarding3,
            fit: BoxFit.fitWidth,
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  screenIndex == 0
                      ? "Welcome to Your Gym Companion."
                      : screenIndex == 1
                          ? 'Built for Everyone, Designed for Success'
                          : 'Ready to Transform? Let’s Begin!',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                AppSize.kHeight10,
                Text(
                  screenIndex == 0
                      ? "Manage, train, achieve all in one. For gym owners, trainers,  & athletes ready to elevate their fitness journey"
                      : screenIndex == 1
                          ? 'Effortlessly manage members, customize workouts, and track progress. '
                          : 'Get the tools, insights, and support you need to reach new heights. Start your fitness journey today!',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 17,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/app/config/app_constants.dart';

class OnboardContainer extends StatelessWidget {
  const OnboardContainer({
    super.key,
    required this.screenIndex,
  });
  final int screenIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Visibility(
          visible: screenIndex == 0,
          child: AppSize.kHeight5,
        ),
        SizedBox(
          width: double.infinity,
          height: 300,
          child: SvgPicture.asset(
            screenIndex == 0
                ? AppImages.onBoarding1
                : screenIndex == 1
                    ? AppImages.onBoarding2
                    : AppImages.onBoarding3,
            fit: BoxFit.contain,
          ),
        ),
        screenIndex == 2 ? AppSize.kHeight40 : AppSize.kHeight15,
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
        Text(
          screenIndex == 0
              ? "Manage, train, achieve all in one. For gym owners, trainers,  & athletes ready to elevate their fitness journey"
              : screenIndex == 1
                  ? 'Effortlessly manage members, customize workouts, and track progress. '
                  : 'Get the tools, insights, and support you need to reach new heights. Start your fitness journey today!',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 16,
              ),
        ),
        Visibility(
          visible: screenIndex == 1 || screenIndex == 2,
          child: AppSize.kHeight20,
        ),
      ],
    );
  }
}

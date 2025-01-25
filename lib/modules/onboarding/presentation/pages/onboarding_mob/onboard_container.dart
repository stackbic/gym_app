import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_app/app/config/app_constants.dart';
import 'package:gym_app/app/widgets/common_container/common_container.dart';

class OnboardContainer extends StatelessWidget {
  const OnboardContainer({
    super.key,
    required this.themeState,
  });
  final ThemeData themeState;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: FadeInUp(
            child: Center(
              child: SvgPicture.asset(
                height: 400,
                AppImages.onBoarding,
              ),
            ),
          ),
        ),
        Expanded(
          child: FadeInUp(
            child: CommonContainerWithBorder(
              padding: EdgeInsets.symmetric(
                vertical: 14,
                horizontal: 20,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: AppColors.kWhite.withValues(
                alpha: 0.05,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 3,
                      width: 50,
                      decoration: BoxDecoration(
                        color: AppColors.kWhite,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  AppSize.kHeight30,
                  FadeInLeft(
                    child: Text(
                      "Welcome to Your Gym\nCompanion.",
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                          ),
                    ),
                  ),
                  AppSize.kHeight10,
                  FadeInRight(
                    child: Text(
                      "Streamline management, enhance training, and achieve excellence—all in one platform. Begin your journey now!",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                            color: AppColors.kWhite.withValues(
                              alpha: 0.5,
                            ),
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

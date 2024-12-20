import 'package:flutter/material.dart';

class AppColors {
  static const kPrimaryColor = Color(0xffF18701);
  static const kBlack = Colors.black;
  static const kWhite = Colors.white;
  static const kWhiteShade = Color(0xffF6F6F6);
  static const kBlackBackground = Color(0xff101010);
  static const kBlackSecondary = Color(0xff272727);
}

// For images
class AppImages {
  static const path = 'assets/images/';
  static const onBoarding1 = '${path}gym_onboarding1.svg';
  static const onBoarding2 = '${path}gym_onboarding2.svg';
  static const onBoarding3 = '${path}gym_onboarding3.svg';
}

// For sizing

class AppSize {
  static const kHeight5 = SizedBox(
    height: 5,
  );
  static const kHeight10 = SizedBox(
    height: 10,
  );
  static const kHeight15 = SizedBox(
    height: 15,
  );
  static const kHeight20 = SizedBox(
    height: 20,
  );
  static const kHeight30 = SizedBox(
    height: 30,
  );
  static const kHeight40 = SizedBox(
    height: 40,
  );

  // Width
  static const kWidth5 = SizedBox(
    width: 5,
  );
  static const kWidth10 = SizedBox(
    width: 10,
  );
  static const kWidth15 = SizedBox(
    width: 15,
  );
  static const kWidth20 = SizedBox(
    width: 20,
  );
  static const kWidth30 = SizedBox(
    width: 30,
  );
  static const kWidth40 = SizedBox(
    width: 40,
  );
  static const kWidth50 = SizedBox(
    width: 50,
  );
  static const kWidth60 = SizedBox(
    width: 60,
  );
}

// Paddings
class AppPaddings {
  static const backgroundP = EdgeInsets.all(20);
  static const bottomnavP = EdgeInsets.symmetric(
    horizontal: 30,
    vertical: 40,
  );
  static const buttonPadding = EdgeInsets.all(12);
}

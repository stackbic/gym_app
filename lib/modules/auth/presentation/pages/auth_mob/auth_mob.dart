import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/app/config/app_constants.dart';

import '../../../../../app/widgets/common_buttons_textforms/button_textforms.dart';

class AuthMob extends StatelessWidget {
  const AuthMob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: AppPaddings.backgroundP,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Container(
                  //   height: 55,
                  //   width: double.infinity,
                  //   decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //       image: AssetImage(
                  //         AppImages.washefyLogo,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // AppSize.kHeight30,
                  AppSize.kHeight30,
                  Text.rich(
                    TextSpan(
                      text: "Welcome to ",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontSize: 24,
                          ),
                      children: [
                        TextSpan(
                          text: "Gymify",
                          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                                color: AppColors.kPrimaryColor,
                              ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "Log in to access personalized features\nand stay connected",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontSize: 16,
                          color: AppColors.kBlack.withAlpha(
                            (0.6 * 255).round(),
                          ),
                        ),
                  ),
                  AppSize.kHeight40,
                  CustomTextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    contentPadding: AppPaddings.textFormPadding,
                    preffix: IconButton(
                      onPressed: null,
                      icon: Icon(
                        CupertinoIcons.mail_solid,
                        size: AppSize.appIconSize,
                        color: AppColors.kBlack.withAlpha((0.7 * 255).round()),
                      ),
                    ),
                    keyboard: TextInputType.emailAddress,
                    cursorColor: AppColors.kBlack,
                    color: AppColors.kBlack,
                    borderColor: AppColors.kBlack.withValues(alpha: 0.2),
                    enabledBorderColor: AppColors.kBlack.withValues(alpha: 0.2),
                    focusBorderColor: AppColors.kBlack.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(30),
                    enabledBorderRadius: BorderRadius.circular(30),
                    focussedBorderRadius: BorderRadius.circular(30),
                    label: Text(
                      "Email or Org ID",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 18,
                            color: AppColors.kBlack.withAlpha(
                              (0.4 * 255).round(),
                            ),
                          ),
                    ),
                    validator: (p0) => null,
                  ),
                  AppSize.kHeight30,
                  CustomTextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    contentPadding: AppPaddings.textFormPadding,
                    preffix: IconButton(
                      onPressed: null,
                      icon: Icon(
                        CupertinoIcons.padlock_solid,
                        size: AppSize.appIconSize,
                        color: AppColors.kBlack.withAlpha((0.7 * 255).round()),
                      ),
                    ),
                    suffix: IconButton(
                      onPressed: null,
                      icon: Icon(
                        CupertinoIcons.eye_slash_fill,
                        size: AppSize.appIconSize,
                        color: AppColors.kBlack.withAlpha((0.7 * 255).round()),
                      ),
                    ),
                    keyboard: TextInputType.visiblePassword,
                    cursorColor: AppColors.kBlack,
                    color: AppColors.kBlack,
                    borderColor: AppColors.kBlack.withValues(alpha: 0.2),
                    enabledBorderColor: AppColors.kBlack.withValues(alpha: 0.2),
                    focusBorderColor: AppColors.kBlack.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(30),
                    enabledBorderRadius: BorderRadius.circular(30),
                    focussedBorderRadius: BorderRadius.circular(30),
                    label: Text(
                      "Password",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 18,
                            color: AppColors.kBlack.withAlpha(
                              (0.4 * 255).round(),
                            ),
                          ),
                    ),
                    validator: (p0) => null,
                  ),
                  AppSize.kHeight30,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Transform.scale(
                            scale: 1.2,
                            child: Checkbox.adaptive(
                              value: false,
                              onChanged: (value) {},
                              side: BorderSide(
                                color: AppColors.kBlack.withAlpha(
                                  (0.4 * 255).round(),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            'Remember me',
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  fontSize: 16.5,
                                ),
                          ),
                        ],
                      ),
                      Text(
                        "Forgot Password?",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontSize: 16,
                            ),
                      ),
                    ],
                  ),
                  AppSize.kHeight30,
                  SizedBox(
                    width: double.infinity,
                    child: ButtonWidget(
                      padding: const WidgetStatePropertyAll(AppPaddings.buttonPadding),
                      text: "LOGIN",
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            color: AppColors.kWhite,
                          ),
                      backgroundColor: const WidgetStatePropertyAll(AppColors.kPrimaryColor),
                      borderRadius: BorderRadius.circular(30),
                      onPressed: () {},
                    ),
                  ),
                  AppSize.kHeight30,
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 25,
        ),
        child: Text.rich(
          textAlign: TextAlign.center,
          TextSpan(
            text: "By clicking Login to your app you agree to Recognotes  ",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: 14,
                ),
            children: [
              TextSpan(
                text: "Term's of use ",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontSize: 14,
                    ),
              ),
              TextSpan(
                text: "and ",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 14,
                    ),
              ),
              TextSpan(
                text: "Privacy policy",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontSize: 14,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

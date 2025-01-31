import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym_app/app/config/app_constants.dart';
import 'package:gym_app/app/config/themes/themes.dart';
import 'package:gym_app/config/riverpod_providers.dart';
import '../../../../../app/widgets/common_buttons_textforms/button_textforms.dart';

class AuthMob extends StatelessWidget {
  const AuthMob({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      //final authState = ref.watch(RiverpodProviders.authProvider);
      final authController = ref.watch(RiverpodProviders.authProvider.notifier);

      return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.5,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.kBlack,
                  image: DecorationImage(
                    image: AssetImage(
                      AppImages.intrainorBanner,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: AppPaddings.backgroundP,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: "Connect to ",
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                fontSize: 24,
                                fontFamily: 'Poppins',
                              ),
                          children: [
                            TextSpan(
                              text: "Explore.",
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
                              color: AppThemes == AppThemes.lightTheme
                                  ? AppColors.kBlack
                                  : AppColors.kWhite.withValues(
                                      alpha: 0.5,
                                    ),
                            ),
                      ),
                      AppSize.kHeight30,
                      CustomTextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        contentPadding: AppPaddings.textFormPadding,
                        preffix: IconButton(
                          onPressed: null,
                          icon: Icon(
                            CupertinoIcons.creditcard,
                            size: AppSize.appIconSize,
                          ),
                        ),
                        keyboard: TextInputType.emailAddress,
                        cursorColor: AppThemes == AppThemes.lightTheme ? AppColors.kBlack : AppColors.kWhite,
                        color: AppThemes == AppThemes.lightTheme ? AppColors.kBlack : AppColors.kWhite,
                        borderColor: AppThemes == AppThemes.lightTheme
                            ? AppColors.kBlack.withValues(alpha: 0.2)
                            : AppColors.kWhite.withValues(alpha: 0.4),
                        enabledBorderColor: AppThemes == AppThemes.lightTheme
                            ? AppColors.kBlack.withValues(alpha: 0.2)
                            : AppColors.kWhite.withValues(alpha: 0.4),
                        focusBorderColor: AppThemes == AppThemes.lightTheme
                            ? AppColors.kBlack.withValues(alpha: 0.2)
                            : AppColors.kWhite.withValues(alpha: 0.4),
                        borderRadius: BorderRadius.circular(12),
                        enabledBorderRadius: BorderRadius.circular(12),
                        focussedBorderRadius: BorderRadius.circular(12),
                        label: Text(
                          "Enter Org ID",
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                fontSize: 18,
                                color: AppThemes == AppThemes.lightTheme
                                    ? AppColors.kBlack.withValues(
                                        alpha: 0.4,
                                      )
                                    : AppColors.kWhite.withValues(alpha: 0.4),
                              ),
                        ),
                        validator: (p0) => null,
                      ),
                      AppSize.kHeight20,
                      SizedBox(
                        width: double.infinity,
                        child: ButtonWidget(
                          padding: const WidgetStatePropertyAll(AppPaddings.buttonPadding),
                          text: "LOGIN",
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                color: AppColors.kWhite,
                                fontSize: 18,
                              ),
                          backgroundColor: const WidgetStatePropertyAll(AppColors.kPrimaryColor),
                          borderRadius: BorderRadius.circular(12),
                          onPressed: () {
                            authController.onTapLogin(context);
                          },
                        ),
                      ),
                      AppSize.kHeight20,
                      Divider(
                        indent: 10,
                        endIndent: 10,
                      ),
                      AppSize.kHeight10,
                      Center(
                        child: Text.rich(
                          textAlign: TextAlign.center,
                          TextSpan(
                            text: "Don't have an account? ",
                            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                ),
                            children: [
                              TextSpan(
                                text: "Register",
                                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          child: Text.rich(
            textAlign: TextAlign.center,
            TextSpan(
              text: "By clicking Login to your app you agree to Recognotes  ",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 12,
                    fontFamily: 'Poppins',
                  ),
              children: [
                TextSpan(
                  text: "Term's of use ",
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                      ),
                ),
                TextSpan(
                  text: "and ",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                      ),
                ),
                TextSpan(
                  text: "Privacy policy",
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                      ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

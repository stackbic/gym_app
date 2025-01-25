import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym_app/app/router/router_constants.dart';
import 'package:gym_app/app/widgets/responsive_widget/responsive_builder.dart';
import 'package:gym_app/modules/onboarding/domain/entities/onboarding_entity.dart';

class OnboardingController extends StateNotifier<OnboardingEntity> {
  OnboardingController() : super(OnboardingEntity());

  // Function for navigation
  onNavigateAuth(BuildContext context) {
    commonNavigation(context: context, route: AppRouterConstants.authRoute);
  }
}

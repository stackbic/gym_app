import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym_app/app/router/router_constants.dart';
import 'package:gym_app/app/widgets/responsive_widget/responsive_builder.dart';
import 'package:gym_app/modules/onboarding/presentation/controllers/mob_controllers/onboarding_mob_state.dart';

class OnboardingMobController extends StateNotifier<OnboardingMobState> {
  OnboardingMobController() : super(OnboardingMobState());

  // Functions for the onboarding part
  void updateCurrentPage(int page) {
    state = state.copyWith(currentPage: page);
  }

  void skipToLastPage() {
    state = state.copyWith(currentPage: state.onBoardTotalPage - 1);
  }

  bool shouldShowSkipButton() {
    return state.currentPage < state.onBoardTotalPage - 1;
  }

  bool isLastPage() {
    return state.currentPage == state.onBoardTotalPage - 1;
  }

  // Function for navigation
  onNavigateAuth(BuildContext context, {required PageController controller}) {
    final nextPage = controller.page!.toInt() + 1;
    if (nextPage < 3) {
      controller.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      commonNavigation(context: context, route: AppRouterConstants.authRoute);
    }
  }
}

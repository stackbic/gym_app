import 'package:flutter_riverpod/flutter_riverpod.dart';
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
}

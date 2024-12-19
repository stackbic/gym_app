class OnboardingMobState {
  final bool isLoading;
  final int onBoardTotalPage;
  final int currentPage;
  OnboardingMobState({
    this.isLoading = false,
    this.onBoardTotalPage = 3,
    this.currentPage = 0,
  });

  OnboardingMobState copyWith({
    bool? isLoading,
    int? onBoardTotalPage,
    int? currentPage,
  }) {
    return OnboardingMobState(
      isLoading: isLoading ?? this.isLoading,
      onBoardTotalPage: onBoardTotalPage ?? this.onBoardTotalPage,
      currentPage: currentPage ?? this.currentPage,
    );
  }
}

class OnboardingEntity {
  final bool isLoading;
  final int onBoardTotalPage;
  OnboardingEntity({
    this.isLoading = false,
    this.onBoardTotalPage = 3,
  });

  OnboardingEntity copyWith({
    bool? isLoading,
    int? onBoardTotalPage,
    int? currentPage,
  }) {
    return OnboardingEntity(
      isLoading: isLoading ?? this.isLoading,
      onBoardTotalPage: onBoardTotalPage ?? this.onBoardTotalPage,
    );
  }
}

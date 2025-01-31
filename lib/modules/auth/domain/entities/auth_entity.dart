import 'package:flutter/material.dart'; // For TextEditingController

@immutable
class AuthEntity {
  final bool isLoading;

  const AuthEntity({
    required this.isLoading,
  });

  /// Factory method to create an initial state with initialized controllers
  factory AuthEntity.initial() {
    return AuthEntity(
      isLoading: false,
    );
  }

  /// Creates a copy of the state with updated values
  AuthEntity copyWith({
    bool? isLoading,
  }) {
    return AuthEntity(
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym_app/app/config/themes/themes.dart';
import 'package:gym_app/app/widgets/appbar/appbar.dart';
import 'package:gym_app/config/riverpod_providers.dart';

class OnboardingMob extends StatelessWidget {
  const OnboardingMob({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final themeNotifier = ref.read(RiverpodProviders.themeProvider.notifier);
        return Scaffold(
          appBar: CommonAppBar(
            actions: [
              Switch(
                value: ref.watch(RiverpodProviders.themeProvider) == AppThemes.darkTheme,
                onChanged: (value) {
                  themeNotifier.toggleTheme();
                },
              ),
            ],
          ),
          body: SafeArea(
            child: Column(
              children: [
                Text(
                  "data",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

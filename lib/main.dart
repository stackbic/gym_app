import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym_app/app/router/router.dart';
import 'package:gym_app/app/router/router_constants.dart';
import 'package:gym_app/config/riverpod_providers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: Consumer(
        builder: (context, ref, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Gym App',
            theme: ref.watch(RiverpodProviders.themeProvider),
            initialRoute: AppRouterConstants.splashRoute,
            onGenerateRoute: AppRouter.generateRoute,
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget? desktop; // Optional for future scalability

  const ResponsiveBuilder({
    super.key,
    required this.mobile,
    required this.tablet,
    this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobile; // Mobile Layout
        } else if (constraints.maxWidth < 1200) {
          return tablet; // Tab Layout
        } else {
          return desktop ?? tablet; // Desktop Layout (fallback to Tab)
        }
      },
    );
  }
}

// CommonNavigation
commonNavigation({required BuildContext context, required String route}) {
  Navigator.of(context).pushNamed(route);
}

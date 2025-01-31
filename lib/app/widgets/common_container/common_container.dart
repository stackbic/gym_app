import 'package:flutter/material.dart';
import 'package:gym_app/app/config/app_constants.dart';
import 'package:gym_app/app/config/themes/themes.dart';

class CommonContainerWithBorder extends StatelessWidget {
  const CommonContainerWithBorder({
    super.key,
    required this.child,
    this.color,
    this.padding,
    this.borderColor,
    this.radius,
    this.borderRadius,
  });
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final Color? borderColor;
  final double? radius;
  final BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(radius ?? 10),
        color: color ?? (AppThemes == AppThemes.lightTheme ? AppColors.kWhite : AppColors.kBlackSecondary),
        border: Border.all(
          color: borderColor ?? AppColors.kBlack.withAlpha((0.1 * 255).round()),
        ),
      ),
      child: child,
    );
  }
}

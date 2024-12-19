import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/app/config/app_constants.dart';

void showCustomDialog(
    {required BuildContext context,
    required String title,
    required String message,
    TextStyle? titleStyle,
    TextStyle? messageStyle,
    String buttonText = 'Close',
    TextStyle? buttonTextStyle,
    Widget? content,
    EdgeInsetsGeometry? contentPadding,
    bool? barrierDismissible,
    Color? backgroundColor,
    Color? surfaceTintColor,
    double? borderRadius}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            AppSize.kWidth20,
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: CircleAvatar(
                radius: 15,
                backgroundColor: AppColors.kBlack.withAlpha((0.6 * 255).round()),
                child: const Icon(
                  CupertinoIcons.clear,
                  color: AppColors.kWhite,
                  size: 20,
                ),
              ),
            )
          ],
        ),
        backgroundColor: backgroundColor ?? AppColors.kWhite,
        surfaceTintColor: surfaceTintColor ?? AppColors.kWhite,
        contentPadding: contentPadding ?? const EdgeInsets.all(20.0),
        content: content,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 20.0),
        ),
      );
    },
    barrierDismissible: barrierDismissible ?? true,
  );
}

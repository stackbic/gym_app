import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({
    super.key,
    this.title,
    this.titleWidget,
    this.actions,
    this.backgroundColor,
    this.elevation,
    this.bottom,
    this.titleStyle,
    this.centerTitle,
  });

  final String? title;
  final Widget? titleWidget;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final double? elevation;
  final PreferredSizeWidget? bottom;
  final TextStyle? titleStyle;
  final bool? centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: titleWidget ??
          Text(
            title ?? '',
            style: titleStyle ??
                const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
          ),
      actions: actions,
      backgroundColor: backgroundColor,
      elevation: elevation,
      bottom: bottom,
      centerTitle: centerTitle,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + (bottom?.preferredSize.height ?? 0));
}

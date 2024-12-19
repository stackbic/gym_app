import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../config/app_constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.suffix,
    this.controller,
    required this.validator,
    this.obscureText,
    required this.keyboard,
    this.onChanged,
    this.text,
    this.contentPadding,
    this.preffix,
    this.hintText,
    this.colorFill,
    this.label,
    this.borderColor,
    this.focusBorderColor,
    this.enabledBorderColor,
    this.cursorColor,
    this.color,
    this.hintStyle,
    this.borderRadius,
    this.focussedBorderRadius,
    this.enabledBorderRadius,
    this.filled,
    this.inputFormatters,
    this.decoration,
    this.autovalidateMode,
    this.readOnly = false,
    this.fontSize,
    this.onTap,
    this.maxLines = 1,
    this.minLines,
    this.textfieldOpacity,
  });

  final Widget? suffix;
  final Widget? preffix;
  final String? hintText;
  final Color? colorFill;
  final TextEditingController? controller;
  final String? Function(String?) validator;
  final bool? obscureText;
  final String? text;
  final TextInputType keyboard;
  final EdgeInsetsGeometry? contentPadding;
  final void Function(String)? onChanged;
  final Widget? label;
  final Color? borderColor;
  final Color? focusBorderColor;
  final Color? enabledBorderColor;
  final Color? cursorColor;
  final Color? color;
  final TextStyle? hintStyle;
  final BorderRadius? borderRadius;
  final BorderRadius? focussedBorderRadius;
  final BorderRadius? enabledBorderRadius;
  final bool? filled;
  final List<TextInputFormatter>? inputFormatters;
  final InputDecoration? decoration;
  final AutovalidateMode? autovalidateMode;
  final bool readOnly;
  final double? fontSize;
  final void Function()? onTap;
  final int? maxLines;
  final int? minLines;
  final double? textfieldOpacity;
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: textfieldOpacity ?? 1,
      child: TextFormField(
        onChanged: onChanged,
        obscureText: obscureText ?? false,
        keyboardType: keyboard,
        textInputAction: TextInputAction.done,
        controller: controller,
        cursorColor: cursorColor ?? AppColors.kWhite,
        style: TextStyle(color: color ?? AppColors.kWhite, fontSize: fontSize ?? 16),
        validator: validator,
        inputFormatters: inputFormatters,
        autovalidateMode: autovalidateMode,
        readOnly: readOnly,
        onTap: onTap,
        maxLines: maxLines,
        minLines: minLines,
        decoration: decoration ??
            InputDecoration(
              fillColor: colorFill,
              suffixIcon: suffix,
              hintText: hintText,
              hintStyle: hintStyle,
              prefixIcon: preffix,
              filled: filled,
              label: (text != null || label != null)
                  ? label ??
                      Text(
                        text ?? '',
                        style: TextStyle(
                          color: AppColors.kWhite.withAlpha((0.3 * 255).round()),
                        ),
                      )
                  : null,
              contentPadding: contentPadding,
              border: OutlineInputBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(14),
                borderSide: BorderSide(
                  color: borderColor ?? AppColors.kWhite,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: enabledBorderColor ?? AppColors.kWhite,
                ),
                borderRadius: enabledBorderRadius ?? BorderRadius.circular(14),
              ),
              enabled: true,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: focusBorderColor ?? AppColors.kWhite,
                ),
                borderRadius: focussedBorderRadius ?? BorderRadius.circular(14),
              ),
            ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    this.screen,
    required this.text,
    this.backgroundColor,
    required this.borderRadius,
    this.style,
    this.padding,
    this.onPressed,
    this.isLoading = false,
    this.side,
    this.foregroundColor,
  });

  final Widget? screen;
  final String text;
  final WidgetStateProperty<Color?>? backgroundColor;
  final BorderRadiusGeometry borderRadius;
  final TextStyle? style;
  final WidgetStateProperty<EdgeInsetsGeometry?>? padding;
  final void Function()? onPressed;
  final bool isLoading;
  final BorderSide? side;
  final WidgetStateProperty<Color?>? foregroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed ??
          (screen != null
              ? () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return screen!;
                      },
                    ),
                  );
                }
              : null),
      style: ButtonStyle(
        elevation: const WidgetStatePropertyAll(0),
        backgroundColor: backgroundColor,
        padding: padding,
        foregroundColor: foregroundColor ?? WidgetStateProperty.all(AppColors.kWhite),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: borderRadius, side: side ?? BorderSide.none),
        ),
      ),
      child: isLoading
          ? Container(
              width: 20,
              height: 20,
              padding: const EdgeInsets.all(2),
              child: const CircularProgressIndicator(
                color: AppColors.kWhite,
                strokeWidth: 2,
              ),
            )
          : FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                text,
                style: style,
              ),
            ),
    );
  }
}

class CommonTwoHeaderColumnTileWidget extends StatelessWidget {
  const CommonTwoHeaderColumnTileWidget({
    super.key,
    required this.headerTitle,
    required this.subWidget,
    this.headerStyle,
    this.spaceWidget,
  });
  final String headerTitle;
  final Widget subWidget;
  final TextStyle? headerStyle;
  final Widget? spaceWidget;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headerTitle,
          style: headerStyle,
        ),
        spaceWidget ?? AppSize.kHeight10,
        subWidget,
      ],
    );
  }
}

class CommonToggleButton extends StatelessWidget {
  const CommonToggleButton({
    super.key,
    required this.value,
    this.onChanged,
    this.trackOutlineColor,
    this.toggleSize,
    this.absorbing,
    required this.isYesNo,
  });
  final bool value;
  final void Function(bool)? onChanged;
  final WidgetStateProperty<Color?>? trackOutlineColor;
  final double? toggleSize;
  final bool? absorbing;
  final bool isYesNo;
  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: absorbing ?? false,
      child: isYesNo
          ? Row(
              children: [
                const Text(
                  "Yes",
                  style: TextStyle(
                    color: AppColors.kPrimaryColor,
                    fontSize: 18,
                  ),
                ),
                Transform.scale(
                  scale: toggleSize ?? 0.6,
                  child: Switch(
                    value: value,
                    onChanged: onChanged,
                    activeColor: AppColors.kWhite,
                    activeTrackColor: AppColors.kPrimaryColor,
                    inactiveTrackColor: AppColors.kWhite,
                    trackOutlineColor: trackOutlineColor ?? const WidgetStatePropertyAll(AppColors.kPrimaryColor),
                  ),
                ),
                const Text(
                  "No",
                  style: TextStyle(
                    color: AppColors.kPrimaryColor,
                    fontSize: 18,
                  ),
                ),
              ],
            )
          : Transform.scale(
              scale: toggleSize ?? 0.6,
              child: Switch(
                value: value,
                onChanged: onChanged,
                activeColor: AppColors.kWhite,
                activeTrackColor: AppColors.kPrimaryColor,
                inactiveTrackColor: AppColors.kWhite,
                trackOutlineColor: trackOutlineColor ?? const WidgetStatePropertyAll(AppColors.kPrimaryColor),
              ),
            ),
    );
  }
}

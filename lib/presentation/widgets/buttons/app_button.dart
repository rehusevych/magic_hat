import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magic_hat_task/presentation/core/colors.dart';
import 'package:magic_hat_task/presentation/core/constants/dimension.dart';
import 'package:magic_hat_task/presentation/core/theme/theme.dart';

const double _buttonBorderRadius = 100.0;

class AppButton extends StatelessWidget {
  final String text;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? loadingWidget;
  final Color textColor;
  final double widthPadding;
  final double textSize;
  final EdgeInsets? padding;
  final Color borderColor;
  final Color buttonColor;
  final VoidCallback? onPressed;
  final bool isFullWidth;
  final bool isSplashVisible;

  const AppButton({
    super.key,
    required this.text,
    this.suffixIcon,
    this.prefixIcon,
    this.onPressed,
    required this.textColor,
    required this.borderColor,
    required this.buttonColor,
    this.widthPadding = doubleLightSpace,
    this.textSize = 14,
    this.padding,
    this.isSplashVisible = true,
    this.isFullWidth = false,
    this.loadingWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(_buttonBorderRadius),
      color: buttonColor,
      child: InkWell(
        splashColor: isSplashVisible ? AppColors.brown : Colors.transparent,
        borderRadius: BorderRadius.circular(_buttonBorderRadius),
        onTap: onPressed,
        child: Container(
          padding: padding ??
              EdgeInsets.symmetric(
                horizontal: (largeSpace * 2.5).w,
                vertical: doubleLightSpace.h,
              ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(_buttonBorderRadius),
            border: Border.all(color: borderColor, width: 1.1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: isFullWidth ? MainAxisSize.max : MainAxisSize.min,
            children: [
              if (prefixIcon != null) ...[
                prefixIcon!,
                SizedBox(width: lightSpace.w),
              ],
              loadingWidget == null
                  ? Text(
                      text,
                      style: context.appTextTheme.caption
                          .paint(textColor)
                          .size(textSize)
                          .copyWith(fontWeight: FontWeight.w600),
                    )
                  : loadingWidget!,
              if (suffixIcon != null) ...[
                SizedBox(width: widthPadding.w),
                suffixIcon!,
              ]
            ],
          ),
        ),
      ),
    );
  }
}

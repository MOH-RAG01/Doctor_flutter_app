import 'package:doctor/core/theming/app_colors.dart';
import 'package:doctor/core/theming/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final TextStyle? titleStyle;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonRaduis;
  final double? buttonMinimumSize;
  const AppTextButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.titleStyle,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonRaduis,
    this.buttonMinimumSize,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          backgroundColor ?? AppColors.primaryBlue,
        ),
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 12.w,
            vertical: verticalPadding?.h ?? 17.h,
          ),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonRaduis?.r ?? 16.r),
          ),
        ),
        minimumSize: WidgetStatePropertyAll(
          Size(double.maxFinite.w, buttonMinimumSize?.h ?? 60.h),
        ),
      ),
      child: Text(
        title,
        style: titleStyle ?? AppFontsStyle.font16WhiteSemiBold,
      ),
    );
  }
}

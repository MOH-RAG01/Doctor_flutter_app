import 'package:doctor/core/theming/app_colors.dart';
import 'package:doctor/core/theming/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsDirectional? contentPadding;
  final String hintText;
  final TextStyle? hintStyle;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final bool? obscureText;
  final VoidCallback? onTap;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    required this.hintText,
    this.suffixIcon,
    this.backgroundColor,
    this.enabledBorder,
    this.focusedBorder,
    this.obscureText,
    this.hintStyle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        fillColor: backgroundColor ?? AppColors.darkerWhite,
        filled: true,
        hintText: hintText,
        hintStyle: hintStyle ?? AppFontsStyle.font14LightGreyRegular,
        isDense: true,
        suffixIcon: suffixIcon,
        contentPadding:
            contentPadding ??
            EdgeInsetsDirectional.symmetric(horizontal: 20.w, vertical: 17.h),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: AppColors.lighterGrey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: AppColors.primaryBlue),
        ),
      ),
    );
  }
}

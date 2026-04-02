import 'package:doctor/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppFontsStyle {
  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeight.w700,
  );
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    color: AppColors.primaryBlue,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font13Grey400Weight = TextStyle(
    fontSize: 13.sp,
    color: AppColors.grey,
    fontWeight: FontWeight.w400,
  );
  static TextStyle font16White600Weight = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
}

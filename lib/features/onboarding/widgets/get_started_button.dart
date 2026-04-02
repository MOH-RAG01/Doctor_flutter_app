import 'package:doctor/core/helpers/extentions.dart';
import 'package:doctor/core/routing/routes.dart';
import 'package:doctor/core/theming/app_colors.dart';
import 'package:doctor/core/theming/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColors.primaryBlue),
        minimumSize: WidgetStatePropertyAll(Size(double.infinity, 52.h)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
        ),
      ),
      child: Text('Get Started', style: AppFontsStyle.font16White600Weight),
    );
  }
}

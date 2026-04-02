import 'dart:ui';

import 'package:doctor/core/theming/app_colors.dart';
import 'package:doctor/core/theming/app_fonts.dart';
import 'package:doctor/features/onboarding/widgets/doc_log_and_name.dart';
import 'package:doctor/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:doctor/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
          child: Column(
            children: [
              const DocLogAndName(),
              Gap(30.h),
              DoctorImageAndText(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      style: AppFontsStyle.font13Grey400Weight,
                      textAlign: TextAlign.center,
                    ),
                    Gap(16.h),
                    const GetStartedButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:doctor/core/theming/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class RecommendationDoctorListView extends StatelessWidget {
  const RecommendationDoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 24.h),
            child: Row(
              children: [
                Image.asset('assets/images/Image (2).png', fit: BoxFit.fill),
                Gap(20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr.Randy Wigham',
                      style: AppFontsStyle.font16DarkBlueBold,
                    ),
                    Gap(8),
                    Text(
                      'General  |  RSUD Gatot Subroto',
                      style: AppFontsStyle.font12GreyMedium,
                    ),
                    Gap(10),
                    Text(
                      'Email@123.com',
                      style: AppFontsStyle.font12GreyMedium,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

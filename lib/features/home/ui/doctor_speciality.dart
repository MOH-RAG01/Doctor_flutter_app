import 'package:doctor/core/theming/app_colors.dart';
import 'package:doctor/core/theming/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class DoctorSpeciality extends StatelessWidget {
  const DoctorSpeciality({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.specialLightGrey,
                  radius: 32.r,
                  child: SvgPicture.asset(
                    'assets/images/brain-svgrepo-com.svg',
                    width: 40.w,
                    height: 40.h,
                  ),
                ),
                Gap(12),
                Text("General", style: AppFontsStyle.font12DarkBlueRegular),
              ],
            ),
          );
        },
      ),
    );
  }
}

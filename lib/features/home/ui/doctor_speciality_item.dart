import 'package:doctor/core/theming/app_colors.dart';
import 'package:doctor/core/theming/app_fonts.dart';
import 'package:doctor/features/home/data/models/specialization_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class DoctorSpecialityItem extends StatelessWidget {
  final int index;
  final SpecializationData? specializationitem;
  const DoctorSpecialityItem({
    super.key,
    required this.index,
    required this.specializationitem,
  });

  @override
  Widget build(BuildContext context) {
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
          Text(
            specializationitem?.name ?? "Specialization",
            style: AppFontsStyle.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}

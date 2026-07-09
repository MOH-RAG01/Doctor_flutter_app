import 'package:doctor/core/theming/app_fonts.dart';
import 'package:doctor/features/home/data/models/specialization_response.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class RecommendationDoctorListViewItem extends StatelessWidget {
  final Doctors? doctormodel;

  const RecommendationDoctorListViewItem({
    super.key,
    required this.doctormodel,
  });

  @override
  Widget build(BuildContext context) {
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
                doctormodel?.name ?? 'Dr.Randy Wigham',
                style: AppFontsStyle.font16DarkBlueBold,
              ),
              Gap(8),
              Text(
                doctormodel?.degree ?? 'General  |  RSUD Gatot Subroto',
                style: AppFontsStyle.font12GreyMedium,
              ),
              Gap(10),
              Text(
                doctormodel?.email ?? 'Email@123.com',
                style: AppFontsStyle.font12GreyMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:doctor/features/home/ui/doctor_blue_container.dart';
import 'package:doctor/features/home/ui/doctor_speciality.dart';
import 'package:doctor/features/home/ui/doctor_speciality_see_all.dart';
import 'package:doctor/features/home/ui/home_top_bar.dart';
import 'package:doctor/features/home/ui/recommendation_doctor_list_view.dart';
import 'package:doctor/features/home/ui/recommendation_doctor_see_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeTopBar(),
              DoctorBlueContainer(),
              Gap(24.h),
              DoctorSpecialitySeeAll(),
              Gap(16.h),
              DoctorSpeciality(),
              Gap(24.h),
              RecommendationDoctorSeeAll(),
              Gap(16.h),
              RecommendationDoctorListView(),
            ],
          ),
        ),
      ),
    );
  }
}

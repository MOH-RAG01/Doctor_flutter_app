import 'package:doctor/core/theming/app_fonts.dart';
import 'package:flutter/material.dart';

class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Doctor Speciality", style: AppFontsStyle.font18DarkBlueMedium),
        Spacer(),
        Text("See All", style: AppFontsStyle.font12BlueRegular),
      ],
    );
  }
}

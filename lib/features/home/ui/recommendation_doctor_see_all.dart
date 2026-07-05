import 'package:doctor/core/theming/app_fonts.dart';
import 'package:flutter/material.dart';

class RecommendationDoctorSeeAll extends StatelessWidget {
  const RecommendationDoctorSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Recommendation Doctor",
          style: AppFontsStyle.font18DarkBlueMedium,
        ),
        Spacer(),
        Text("See All", style: AppFontsStyle.font12BlueRegular),
      ],
    );
  }
}

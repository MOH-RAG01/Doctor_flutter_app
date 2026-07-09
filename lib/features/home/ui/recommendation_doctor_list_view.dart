import 'package:doctor/core/theming/app_fonts.dart';
import 'package:doctor/features/home/data/models/specialization_response.dart';
import 'package:doctor/features/home/ui/recommendation_doctor_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class RecommendationDoctorListView extends StatelessWidget {
  final List<Doctors?> doctorsList;
  const RecommendationDoctorListView({super.key, required this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        itemCount: doctorsList.length,
        itemBuilder: (context, index) {
          return RecommendationDoctorListViewItem(
            doctormodel: doctorsList[index],
          );
        },
      ),
    );
  }
}

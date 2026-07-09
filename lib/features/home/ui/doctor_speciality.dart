import 'package:doctor/features/home/data/models/specialization_response.dart';
import 'package:doctor/features/home/ui/doctor_speciality_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpeciality extends StatelessWidget {
  final List<SpecializationData?> specailizationDataList;

  const DoctorSpeciality({super.key, required this.specailizationDataList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: specailizationDataList.length,
        itemBuilder: (context, index) {
          return DoctorSpecialityItem(
            index: index,
            specializationitem: specailizationDataList[index],
          );
        },
      ),
    );
  }
}

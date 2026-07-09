import 'package:doctor/features/home/logic/home_cubit.dart';
import 'package:doctor/features/home/logic/home_state.dart';
import 'package:doctor/features/home/ui/doctor_blue_container.dart';
import 'package:doctor/features/home/ui/doctor_speciality.dart';
import 'package:doctor/features/home/ui/doctor_speciality_see_all.dart';
import 'package:doctor/features/home/ui/home_top_bar.dart';
import 'package:doctor/features/home/ui/recommendation_doctor_list_view.dart';
import 'package:doctor/features/home/ui/recommendation_doctor_see_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
              BlocBuilder<HomeCubit, HomeState>(
                buildWhen: (previous, current) {
                  return current is SpecializationLoading ||
                      current is SpecializationLoaded ||
                      current is SpecializationError;
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    specializationLoading: () =>
                        const CircularProgressIndicator(),
                    specializationLoaded: (specializaionDataAll) {
                      var specailizationList = specializaionDataAll.dataList;
                      return Expanded(
                        child: Column(
                          children: [
                            DoctorSpeciality(
                              specailizationDataList: specailizationList ?? [],
                            ),
                            Gap(24.h),
                            const RecommendationDoctorSeeAll(),
                            Gap(16.h),
                            RecommendationDoctorListView(
                              doctorsList:
                                  specailizationList?[0]?.doctorsList ?? [],
                            ),
                          ],
                        ),
                      );
                    },
                    specializationError: (error) => Text(error),
                    orElse: () => const SizedBox.shrink(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

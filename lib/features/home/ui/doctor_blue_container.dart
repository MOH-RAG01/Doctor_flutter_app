import 'package:doctor/core/theming/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class DoctorBlueContainer extends StatelessWidget {
  const DoctorBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 206.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 180.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Background (1).png"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Book and \nschedule with \nnearest doctor",
                  style: AppFontsStyle.font18WhiteMedium,
                  textAlign: TextAlign.start,
                ),
                Gap(16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Find Nearby",
                      style: AppFontsStyle.font12BlueRegular,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 20,
            top: 0,
            child: Image.asset("assets/images/Image (1).png"),
          ),
        ],
      ),
    );
  }
}

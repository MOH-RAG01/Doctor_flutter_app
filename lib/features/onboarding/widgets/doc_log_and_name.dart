import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class DocLogAndName extends StatelessWidget {
  const DocLogAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/images/docdoc_logo.svg'),
        Gap(10.w),
        Text(
          'DocDoc',
          style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

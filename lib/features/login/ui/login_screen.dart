import 'package:doctor/core/theming/app_colors.dart';
import 'package:doctor/core/theming/app_fonts.dart';
import 'package:doctor/core/widgets/app_text_button.dart';
import 'package:doctor/core/widgets/app_text_form_field.dart';
import 'package:doctor/features/login/ui/widgets/already_have_an_acc.dart';
import 'package:doctor/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 70.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: AppFontsStyle.font24BlueBold),
                Gap(8.h),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: AppFontsStyle.font14GreyRegular,
                ),
                Gap(36.h),
                Form(
                  child: Column(
                    children: [
                      AppTextFormField(hintText: 'Email'),
                      Gap(16.h),
                      AppTextFormField(
                        hintText: 'password',
                        obscureText: isPassword,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isPassword = !isPassword;
                            });
                          },
                          child: Icon(
                            isPassword
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                          ),
                        ),
                      ),
                      Gap(24.h),
                      Align(
                        alignment: AlignmentGeometry.centerRight,
                        child: Text(
                          'Forgot Password?',
                          style: AppFontsStyle.font13BlueRegular,
                        ),
                      ),
                      Gap(32.h),
                      AppTextButton(title: 'Login', onPressed: () {}),
                    ],
                  ),
                ),
                Gap(45.h),
                TermsAndConditionsText(),
                Gap(25.h),
                AlreadyHaveAnAcc(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

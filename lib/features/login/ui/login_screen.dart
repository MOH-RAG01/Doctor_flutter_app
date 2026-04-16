import 'package:doctor/core/theming/app_fonts.dart';
import 'package:doctor/core/widgets/app_text_button.dart';
import 'package:doctor/features/login/data/models/login_request_body.dart';
import 'package:doctor/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor/features/login/ui/widgets/dont_have_acc.dart';
import 'package:doctor/features/login/ui/widgets/email_and_password.dart';
import 'package:doctor/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:doctor/core/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(70.h),
                Text('Welcome Back', style: AppFontsStyle.font24BlueBold),
                Gap(8.h),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: AppFontsStyle.font14GreyRegular,
                ),
                Gap(36.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EmailAndPassword(),
                    Gap(24.h),
                    Align(
                      alignment: AlignmentGeometry.centerRight,
                      child: Text(
                        'Forgot Password?',
                        style: AppFontsStyle.font13BlueRegular,
                      ),
                    ),
                    Gap(32.h),
                    AppTextButton(
                      title: 'Login',
                      onPressed: () {
                        validateThenlogin(context);
                      },
                    ),
                    Gap(45.h),
                    TermsAndConditionsText(),
                    Gap(25.h),
                    CreateAcc(),
                    Gap(7.h),

                    LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenlogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
        LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text,
        ),
      );
    }
  }
}

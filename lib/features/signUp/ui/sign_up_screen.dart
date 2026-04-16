import 'package:doctor/core/theming/app_fonts.dart';
import 'package:doctor/core/widgets/app_text_button.dart';
import 'package:doctor/core/widgets/terms_and_conditions_text.dart';
import 'package:doctor/features/signUp/data/models/signup_resuest_body.dart';
import 'package:doctor/features/signUp/logic/cubit/signup_cubit.dart';
import 'package:doctor/features/signUp/ui/widgets/already_have_an_acc.dart';
import 'package:doctor/features/signUp/ui/widgets/signup_bloc_listener.dart';
import 'package:doctor/features/signUp/ui/widgets/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(70.h),

                Text('Create Account', style: AppFontsStyle.font24BlueBold),
                Gap(8.h),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: AppFontsStyle.font14GreyRegular,
                ),
                Gap(36.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(16.h),
                    SignupForm(),
                    Gap(32.h),
                    AppTextButton(
                      title: 'Create Account',
                      onPressed: () {
                        validateThenCreateAcc(context);
                      },
                    ),
                    Gap(45.h),
                    TermsAndConditionsText(),
                    Gap(25.h),
                    AlreadyHaveAnACC(),
                    Gap(20.h),
                    SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenCreateAcc(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates(
        SignupResuestBody(
          name: context.read<SignupCubit>().nameController.text,
          email: context.read<SignupCubit>().emailController.text,
          password: context.read<SignupCubit>().passwordController.text,
          confirmPassword: context
              .read<SignupCubit>()
              .confirmPasswordController
              .text,
          phoneNumber: context.read<SignupCubit>().phoneController.text,
          gender: '0',
        ),
      );
    }
  }
}

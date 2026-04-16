import 'package:doctor/core/helpers/app_regx.dart';
import 'package:doctor/core/widgets/app_text_form_field.dart';
import 'package:doctor/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor/core/widgets/password_validations.dart';
import 'package:doctor/features/signUp/logic/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<SignupForm> {
  bool isPassword = true;
  bool isPasswordConfirmed = true;
  late TextEditingController passwordController;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasSpecialChar = false;
  bool hasMinLength = false;
  bool hasLowerCase = false;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignupCubit>().passwordController;
    passwordController.addListener(() {
      setState(() {
        hasUpperCase = AppRegx.hasUpperCase(passwordController.text);
        hasNumber = AppRegx.hasNumber(passwordController.text);
        hasSpecialChar = AppRegx.hasSpecialChar(passwordController.text);
        hasMinLength = AppRegx.hasMinLength(passwordController.text);
        hasLowerCase = AppRegx.hasLowerCase(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Name',
            validator: (name) {
              if (name == null || name.isEmpty) {
                return 'Please enter your name';
              }
            },
            controller: context.read<SignupCubit>().nameController,
          ),
          Gap(16.h),
          AppTextFormField(
            keyboardtype: TextInputType.number,
            hintText: 'Phone Number',
            validator: (phone) {
              if (phone == null || phone.isEmpty) {
                return 'Please enter your phone number';
              }
            },
            controller: context.read<SignupCubit>().phoneController,
          ),
          Gap(16.h),
          AppTextFormField(
            hintText: 'Email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegx.isValidEmail(value)) {
                return 'Please enter a valid email';
              }
            },
            controller: context.read<SignupCubit>().emailController,
          ),
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
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegx.isValidPassword(value)) {
                return 'Please enter a valid password';
              }
            },
            controller: context.read<SignupCubit>().passwordController,
          ),
          Gap(16.h),
          AppTextFormField(
            hintText: 'password confirmation',
            obscureText: isPasswordConfirmed,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordConfirmed = !isPasswordConfirmed;
                });
              },
              child: Icon(
                isPasswordConfirmed
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
              ),
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegx.isValidPassword(value)) {
                return 'Please enter a valid password';
              }
              if (value !=
                  context.read<SignupCubit>().passwordController.text) {
                return 'Password is not matching';
              }
            },
            controller: context.read<SignupCubit>().confirmPasswordController,
          ),

          Gap(10.h),
          PasswordValidations(
            upperCase: hasUpperCase,
            number: hasNumber,
            specialChar: hasSpecialChar,
            minLength: hasMinLength,
            lowerCase: hasLowerCase,
          ),
        ],
      ),
    );
  }
}

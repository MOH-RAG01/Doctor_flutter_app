import 'package:doctor/core/helpers/app_regx.dart';
import 'package:doctor/core/widgets/app_text_form_field.dart';
import 'package:doctor/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor/features/login/ui/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isPassword = false;
  late TextEditingController passwordController;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasSpecialChar = false;
  bool hasMinLength = false;
  bool hasLowerCase = false;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
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
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegx.isValidEmail(value)) {
                return 'Please enter a valid email';
              }
            },
            controller: context.read<LoginCubit>().emailController,
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
            controller: context.read<LoginCubit>().passwordController,
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

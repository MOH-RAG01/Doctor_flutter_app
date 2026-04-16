import 'package:doctor/core/helpers/extentions.dart';
import 'package:doctor/core/routing/routes.dart';
import 'package:doctor/core/theming/app_fonts.dart';
import 'package:flutter/material.dart';

class CreateAcc extends StatelessWidget {
  const CreateAcc({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(Routes.signUpScreen),
      child: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Don\'t have an account yet? ',
                style: AppFontsStyle.font13GreyRegular,
              ),
              TextSpan(text: 'Sign Up', style: AppFontsStyle.font13BlueRegular),
            ],
          ),
        ),
      ),
    );
  }
}

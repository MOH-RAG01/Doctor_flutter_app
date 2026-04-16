import 'package:doctor/core/helpers/extentions.dart';
import 'package:doctor/core/routing/routes.dart';
import 'package:doctor/core/theming/app_fonts.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnACC extends StatelessWidget {
  const AlreadyHaveAnACC({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(Routes.loginScreen),
      child: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Already have an account yet? ',
                style: AppFontsStyle.font13GreyRegular,
              ),
              TextSpan(text: 'Login', style: AppFontsStyle.font13BlueRegular),
            ],
          ),
        ),
      ),
    );
  }
}

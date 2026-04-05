import 'package:doctor/core/theming/app_fonts.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By signing up, you agree to our ',
            style: AppFontsStyle.font13GreyRegular,
          ),
          TextSpan(
            text: 'Terms of Service',
            style: AppFontsStyle.font14DarkBlueMedium,
          ),
          TextSpan(
            text: ' and ',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          TextSpan(
            text: 'Privacy Policy',
            style: AppFontsStyle.font14DarkBlueMedium,
          ),
        ],
      ),
    );
  }
}

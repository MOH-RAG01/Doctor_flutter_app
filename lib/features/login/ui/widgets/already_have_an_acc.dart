import 'package:doctor/core/theming/app_fonts.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAcc extends StatelessWidget {
  const AlreadyHaveAnAcc({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Already have an account yet? ',
              style: AppFontsStyle.font13GreyRegular,
            ),
            TextSpan(text: 'Sign Up', style: AppFontsStyle.font13BlueRegular),
          ],
        ),
      ),
    );
  }
}

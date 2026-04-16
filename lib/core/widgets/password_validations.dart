import 'package:doctor/core/theming/app_fonts.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  final bool upperCase;
  final bool number;
  final bool specialChar;
  final bool minLength;
  final bool lowerCase;
  const PasswordValidations({
    super.key,
    required this.upperCase,
    required this.number,
    required this.specialChar,
    required this.minLength,
    required this.lowerCase,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 8 characters', minLength),
        buildValidationRow('Contains uppercase letter', upperCase),
        buildValidationRow('Contains number', number),
        buildValidationRow('Contains special character', specialChar),
        buildValidationRow('Contains lowercase letter', lowerCase),
      ],
    );
  }

  Widget buildValidationRow(String text, bool isValid) {
    return Row(
      children: [
        Icon(
          Icons.circle_sharp,
          color: isValid ? Colors.green : Colors.grey,
          size: 8,
        ),
        SizedBox(width: 8),
        Text(
          text,
          style: AppFontsStyle.font13BlueRegular.copyWith(
            decoration: isValid
                ? TextDecoration.lineThrough
                : TextDecoration.none,
            decorationThickness: 2,
            color: isValid ? Colors.green : Colors.grey,
          ),
        ),
      ],
    );
  }
}

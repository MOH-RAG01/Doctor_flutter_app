class AppRegx {
  static bool isValidEmail(String value) {
    return RegExp(r'^[\w\.-]+@[\w\.-]+\.\w{2,}$').hasMatch(value);
  }

  static bool isValidPassword(String value) {
    return RegExp(
      r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
    ).hasMatch(value);
  }

  static bool hasUpperCase(String value) {
    return RegExp(r'[A-Z]').hasMatch(value);
  }

  static bool hasNumber(String value) {
    return RegExp(r'\d').hasMatch(value);
  }

  static bool hasSpecialChar(String value) {
    return RegExp(r'[@$!%*?&]').hasMatch(value);
  }

  static bool hasMinLength(String value) {
    return value.length >= 8;
  }

  static bool hasLowerCase(String value) {
    return RegExp(r'[a-z]').hasMatch(value);
  }
}

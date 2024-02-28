import 'package:tobeto_mobil/constants/pages/auth_text.dart';

class AuthValidator {
  static String? validateName(String? value) {
    if (value!.isEmpty) {
      return nameEmptyFieldText;
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return emailEmptyFieldText;
    }
    if (!value.contains("@")) {
      return emailWrongFormatFieldText;
    }
    if (value.length < 10) {
      return emailLengthLessThanXFieldText;
    }
    return null;
  }

  static String? validatePassword(String? value, {String? passwordRepeat}) {
    if (value!.isEmpty) {
      return passwordEmptyFieldText;
    }
    if (passwordRepeat != null && value != passwordRepeat) {
      return passwordMismatchFieldText;
    }
    return null;
  }
}
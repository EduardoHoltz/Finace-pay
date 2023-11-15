// Using RegExr

class Validator {
  Validator._();

  static String? nameValidator(String? value) {
    final condition =
        RegExp(r"^[a-záàâãéèêíïóôõöúçñ]{3,}(\s[a-záàâãéèêíïóôõöúçñ]{2,})+$");

    if (value != null && value.isEmpty) {
      return 'this field cannot be empty';
    }

    if (value != null && !value.contains(condition)) {
      return 'invalid name';
    }

    return null;
  }

  static String? emailValidator(String? value) {
    final condition = RegExp(r"\b[\w\.-]+@[\w\.-]+\.\w{2,4}\b");

    if (value != null && value.isEmpty) {
      return 'this field cannot be empty';
    }

    if (value != null && !value.contains(condition)) {
      return 'invalid email';
    }

    return null;
  }

  static String? passwordValidator(String? value) {
    final condition =
        RegExp(r"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$");

    if (value != null && value.isEmpty) {
      return 'this field cannot be empty';
    }

    if (value != null && !value.contains(condition)) {
      return 'invalid password';
    }

    return null;
  }

  static String? passwordConfirmValidator(String? first, String? second) {
    if (first != second) {
      return "password doesn't match";
    }

    return null;
  }
}

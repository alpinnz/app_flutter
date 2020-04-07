class LoginValidate {
  static String validateEmail(String value) {
    if (value.isEmpty) {
      return 'Username harus di isi';
    } else if (value.length < 6) {
      return 'Username minimal 6 karakter';
    }
    return null;
  }

  static String validatePass(String value) {
    if (value.length < 4) {
      return 'Password minimal 4 karakter';
    }
    return null;
  }
}

class ValidationMixin {
  String? validateEmail(value) {
    if (value == null) {
      return 'Please enter some text';
    }
    if (!value.contains('@')) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatePassword(value) {
    if (value == null) {
      return 'Please enter some value';
    }
    if (value.length < 4) {
      return 'Password must be more than 4 characters';
    }
    return null;
  }
}

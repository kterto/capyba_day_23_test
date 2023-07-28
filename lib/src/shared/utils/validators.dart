const EMAIL_REGEX =
    r"""^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$""";

const String GENERIC_MANDATORY_FIELD_MSG = 'This field is required';

class Validators {
  const Validators._();

  static List<String? Function(String)> required = [
    (String val) => (val.isEmpty) ? GENERIC_MANDATORY_FIELD_MSG : null
  ];

  static List<String? Function(String)> email = [
    (String val) => (val.isEmpty) ? GENERIC_MANDATORY_FIELD_MSG : null,
    (String value) =>
        !RegExp(EMAIL_REGEX).hasMatch(value) ? 'Enter a valid email' : null,
  ];

  static List<String? Function(String)> password = [
    (String val) => (val.isEmpty) ? GENERIC_MANDATORY_FIELD_MSG : null,
    (String value) => value.isNotEmpty && value.length < 8
        ? 'Password must have at least 8 characters'
        : null,
  ];

  static List<String? Function(String, String)> passwordIsEqual = [
    (String val, String valConfirmation) =>
        (val.isEmpty) || (valConfirmation.isEmpty)
            ? GENERIC_MANDATORY_FIELD_MSG
            : null,
    (String val, String valConfirmation) =>
        !(val == valConfirmation) ? 'Passwords must be the same' : null,
  ];

  static List<String? Function(String)> genIsEqual(String value) =>
      passwordIsEqual
          .map<String? Function(String)>((e) => (String val) => e(value, val))
          .toList();
}

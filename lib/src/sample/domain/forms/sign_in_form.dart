import 'package:convenience_types/types/form_field.dart';
import 'package:convenience_types/types/result.dart';
import 'package:convenience_types/util/form_utils.dart';
import 'package:capyba_day_twenty_three_test/src/shared/utils/validators.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_in_form.freezed.dart';

@freezed
class SignInForm with _$SignInForm, FormUtils {
  const SignInForm._();
  const factory SignInForm({
    @Default(FormField(name: "email")) FormField<String> email,
    @Default(FormField(name: "password")) FormField<String> password,
  }) = _SignInForm;
  Result<String> get emailValidation => validateField<String>(
        field: email.field,
        validators: Validators.email,
      );
  Result<String> get passwordValidation => validateField<String>(
        field: password.field,
        validators: Validators.password,
      );
  bool get isFormValid =>
      emailValidation.isSuccess && passwordValidation.isSuccess;
}

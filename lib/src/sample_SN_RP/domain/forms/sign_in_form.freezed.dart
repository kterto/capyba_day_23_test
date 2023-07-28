// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInForm {
  FormField<String> get email => throw _privateConstructorUsedError;
  FormField<String> get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormCopyWith<SignInForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormCopyWith<$Res> {
  factory $SignInFormCopyWith(
          SignInForm value, $Res Function(SignInForm) then) =
      _$SignInFormCopyWithImpl<$Res>;
  $Res call({FormField<String> email, FormField<String> password});

  $FormFieldCopyWith<String, $Res> get email;
  $FormFieldCopyWith<String, $Res> get password;
}

/// @nodoc
class _$SignInFormCopyWithImpl<$Res> implements $SignInFormCopyWith<$Res> {
  _$SignInFormCopyWithImpl(this._value, this._then);

  final SignInForm _value;
  // ignore: unused_field
  final $Res Function(SignInForm) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as FormField<String>,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as FormField<String>,
    ));
  }

  @override
  $FormFieldCopyWith<String, $Res> get email {
    return $FormFieldCopyWith<String, $Res>(_value.email, (value) {
      return _then(_value.copyWith(email: value));
    });
  }

  @override
  $FormFieldCopyWith<String, $Res> get password {
    return $FormFieldCopyWith<String, $Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value));
    });
  }
}

/// @nodoc
abstract class _$$_SignInFormCopyWith<$Res>
    implements $SignInFormCopyWith<$Res> {
  factory _$$_SignInFormCopyWith(
          _$_SignInForm value, $Res Function(_$_SignInForm) then) =
      __$$_SignInFormCopyWithImpl<$Res>;
  @override
  $Res call({FormField<String> email, FormField<String> password});

  @override
  $FormFieldCopyWith<String, $Res> get email;
  @override
  $FormFieldCopyWith<String, $Res> get password;
}

/// @nodoc
class __$$_SignInFormCopyWithImpl<$Res> extends _$SignInFormCopyWithImpl<$Res>
    implements _$$_SignInFormCopyWith<$Res> {
  __$$_SignInFormCopyWithImpl(
      _$_SignInForm _value, $Res Function(_$_SignInForm) _then)
      : super(_value, (v) => _then(v as _$_SignInForm));

  @override
  _$_SignInForm get _value => super._value as _$_SignInForm;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_SignInForm(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as FormField<String>,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as FormField<String>,
    ));
  }
}

/// @nodoc

class _$_SignInForm extends _SignInForm {
  const _$_SignInForm(
      {this.email = const FormField(name: "email"),
      this.password = const FormField(name: "password")})
      : super._();

  @override
  @JsonKey()
  final FormField<String> email;
  @override
  @JsonKey()
  final FormField<String> password;

  @override
  String toString() {
    return 'SignInForm(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInForm &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_SignInFormCopyWith<_$_SignInForm> get copyWith =>
      __$$_SignInFormCopyWithImpl<_$_SignInForm>(this, _$identity);
}

abstract class _SignInForm extends SignInForm {
  const factory _SignInForm(
      {final FormField<String> email,
      final FormField<String> password}) = _$_SignInForm;
  const _SignInForm._() : super._();

  @override
  FormField<String> get email;
  @override
  FormField<String> get password;
  @override
  @JsonKey(ignore: true)
  _$$_SignInFormCopyWith<_$_SignInForm> get copyWith =>
      throw _privateConstructorUsedError;
}

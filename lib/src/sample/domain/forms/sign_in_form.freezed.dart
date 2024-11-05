// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInForm {
  FormField<String> get email => throw _privateConstructorUsedError;
  FormField<String> get password => throw _privateConstructorUsedError;

  /// Create a copy of SignInForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignInFormCopyWith<SignInForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormCopyWith<$Res> {
  factory $SignInFormCopyWith(
          SignInForm value, $Res Function(SignInForm) then) =
      _$SignInFormCopyWithImpl<$Res, SignInForm>;
  @useResult
  $Res call({FormField<String> email, FormField<String> password});

  $FormFieldCopyWith<String, $Res> get email;
  $FormFieldCopyWith<String, $Res> get password;
}

/// @nodoc
class _$SignInFormCopyWithImpl<$Res, $Val extends SignInForm>
    implements $SignInFormCopyWith<$Res> {
  _$SignInFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as FormField<String>,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as FormField<String>,
    ) as $Val);
  }

  /// Create a copy of SignInForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormFieldCopyWith<String, $Res> get email {
    return $FormFieldCopyWith<String, $Res>(_value.email, (value) {
      return _then(_value.copyWith(email: value) as $Val);
    });
  }

  /// Create a copy of SignInForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormFieldCopyWith<String, $Res> get password {
    return $FormFieldCopyWith<String, $Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignInFormImplCopyWith<$Res>
    implements $SignInFormCopyWith<$Res> {
  factory _$$SignInFormImplCopyWith(
          _$SignInFormImpl value, $Res Function(_$SignInFormImpl) then) =
      __$$SignInFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormField<String> email, FormField<String> password});

  @override
  $FormFieldCopyWith<String, $Res> get email;
  @override
  $FormFieldCopyWith<String, $Res> get password;
}

/// @nodoc
class __$$SignInFormImplCopyWithImpl<$Res>
    extends _$SignInFormCopyWithImpl<$Res, _$SignInFormImpl>
    implements _$$SignInFormImplCopyWith<$Res> {
  __$$SignInFormImplCopyWithImpl(
      _$SignInFormImpl _value, $Res Function(_$SignInFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInFormImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as FormField<String>,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as FormField<String>,
    ));
  }
}

/// @nodoc

class _$SignInFormImpl extends _SignInForm {
  const _$SignInFormImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInFormImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of SignInForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInFormImplCopyWith<_$SignInFormImpl> get copyWith =>
      __$$SignInFormImplCopyWithImpl<_$SignInFormImpl>(this, _$identity);
}

abstract class _SignInForm extends SignInForm {
  const factory _SignInForm(
      {final FormField<String> email,
      final FormField<String> password}) = _$SignInFormImpl;
  const _SignInForm._() : super._();

  @override
  FormField<String> get email;
  @override
  FormField<String> get password;

  /// Create a copy of SignInForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInFormImplCopyWith<_$SignInFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

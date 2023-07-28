// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() signedOut,
    required TResult Function() authInit,
    required TResult Function() gone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? signedOut,
    TResult Function()? authInit,
    TResult Function()? gone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? signedOut,
    TResult Function()? authInit,
    TResult Function()? gone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(AuthInit value) authInit,
    required TResult Function(Gone value) gone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(AuthInit value)? authInit,
    TResult Function(Gone value)? gone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(AuthInit value)? authInit,
    TResult Function(Gone value)? gone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiStateCopyWith<$Res> {
  factory $ApiStateCopyWith(ApiState value, $Res Function(ApiState) then) =
      _$ApiStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ApiStateCopyWithImpl<$Res> implements $ApiStateCopyWith<$Res> {
  _$ApiStateCopyWithImpl(this._value, this._then);

  final ApiState _value;
  // ignore: unused_field
  final $Res Function(ApiState) _then;
}

/// @nodoc
abstract class _$$UnauthenticatedCopyWith<$Res> {
  factory _$$UnauthenticatedCopyWith(
          _$Unauthenticated value, $Res Function(_$Unauthenticated) then) =
      __$$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedCopyWithImpl<$Res> extends _$ApiStateCopyWithImpl<$Res>
    implements _$$UnauthenticatedCopyWith<$Res> {
  __$$UnauthenticatedCopyWithImpl(
      _$Unauthenticated _value, $Res Function(_$Unauthenticated) _then)
      : super(_value, (v) => _then(v as _$Unauthenticated));

  @override
  _$Unauthenticated get _value => super._value as _$Unauthenticated;
}

/// @nodoc

class _$Unauthenticated implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString() {
    return 'ApiState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() signedOut,
    required TResult Function() authInit,
    required TResult Function() gone,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? signedOut,
    TResult Function()? authInit,
    TResult Function()? gone,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? signedOut,
    TResult Function()? authInit,
    TResult Function()? gone,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(AuthInit value) authInit,
    required TResult Function(Gone value) gone,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(AuthInit value)? authInit,
    TResult Function(Gone value)? gone,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(AuthInit value)? authInit,
    TResult Function(Gone value)? gone,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements ApiState {
  const factory Unauthenticated() = _$Unauthenticated;
}

/// @nodoc
abstract class _$$AuthenticatedCopyWith<$Res> {
  factory _$$AuthenticatedCopyWith(
          _$Authenticated value, $Res Function(_$Authenticated) then) =
      __$$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedCopyWithImpl<$Res> extends _$ApiStateCopyWithImpl<$Res>
    implements _$$AuthenticatedCopyWith<$Res> {
  __$$AuthenticatedCopyWithImpl(
      _$Authenticated _value, $Res Function(_$Authenticated) _then)
      : super(_value, (v) => _then(v as _$Authenticated));

  @override
  _$Authenticated get _value => super._value as _$Authenticated;
}

/// @nodoc

class _$Authenticated implements Authenticated {
  const _$Authenticated();

  @override
  String toString() {
    return 'ApiState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() signedOut,
    required TResult Function() authInit,
    required TResult Function() gone,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? signedOut,
    TResult Function()? authInit,
    TResult Function()? gone,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? signedOut,
    TResult Function()? authInit,
    TResult Function()? gone,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(AuthInit value) authInit,
    required TResult Function(Gone value) gone,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(AuthInit value)? authInit,
    TResult Function(Gone value)? gone,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(AuthInit value)? authInit,
    TResult Function(Gone value)? gone,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements ApiState {
  const factory Authenticated() = _$Authenticated;
}

/// @nodoc
abstract class _$$SignedOutCopyWith<$Res> {
  factory _$$SignedOutCopyWith(
          _$SignedOut value, $Res Function(_$SignedOut) then) =
      __$$SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignedOutCopyWithImpl<$Res> extends _$ApiStateCopyWithImpl<$Res>
    implements _$$SignedOutCopyWith<$Res> {
  __$$SignedOutCopyWithImpl(
      _$SignedOut _value, $Res Function(_$SignedOut) _then)
      : super(_value, (v) => _then(v as _$SignedOut));

  @override
  _$SignedOut get _value => super._value as _$SignedOut;
}

/// @nodoc

class _$SignedOut implements SignedOut {
  const _$SignedOut();

  @override
  String toString() {
    return 'ApiState.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() signedOut,
    required TResult Function() authInit,
    required TResult Function() gone,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? signedOut,
    TResult Function()? authInit,
    TResult Function()? gone,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? signedOut,
    TResult Function()? authInit,
    TResult Function()? gone,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(AuthInit value) authInit,
    required TResult Function(Gone value) gone,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(AuthInit value)? authInit,
    TResult Function(Gone value)? gone,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(AuthInit value)? authInit,
    TResult Function(Gone value)? gone,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class SignedOut implements ApiState {
  const factory SignedOut() = _$SignedOut;
}

/// @nodoc
abstract class _$$AuthInitCopyWith<$Res> {
  factory _$$AuthInitCopyWith(
          _$AuthInit value, $Res Function(_$AuthInit) then) =
      __$$AuthInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthInitCopyWithImpl<$Res> extends _$ApiStateCopyWithImpl<$Res>
    implements _$$AuthInitCopyWith<$Res> {
  __$$AuthInitCopyWithImpl(_$AuthInit _value, $Res Function(_$AuthInit) _then)
      : super(_value, (v) => _then(v as _$AuthInit));

  @override
  _$AuthInit get _value => super._value as _$AuthInit;
}

/// @nodoc

class _$AuthInit implements AuthInit {
  const _$AuthInit();

  @override
  String toString() {
    return 'ApiState.authInit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() signedOut,
    required TResult Function() authInit,
    required TResult Function() gone,
  }) {
    return authInit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? signedOut,
    TResult Function()? authInit,
    TResult Function()? gone,
  }) {
    return authInit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? signedOut,
    TResult Function()? authInit,
    TResult Function()? gone,
    required TResult orElse(),
  }) {
    if (authInit != null) {
      return authInit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(AuthInit value) authInit,
    required TResult Function(Gone value) gone,
  }) {
    return authInit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(AuthInit value)? authInit,
    TResult Function(Gone value)? gone,
  }) {
    return authInit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(AuthInit value)? authInit,
    TResult Function(Gone value)? gone,
    required TResult orElse(),
  }) {
    if (authInit != null) {
      return authInit(this);
    }
    return orElse();
  }
}

abstract class AuthInit implements ApiState {
  const factory AuthInit() = _$AuthInit;
}

/// @nodoc
abstract class _$$GoneCopyWith<$Res> {
  factory _$$GoneCopyWith(_$Gone value, $Res Function(_$Gone) then) =
      __$$GoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoneCopyWithImpl<$Res> extends _$ApiStateCopyWithImpl<$Res>
    implements _$$GoneCopyWith<$Res> {
  __$$GoneCopyWithImpl(_$Gone _value, $Res Function(_$Gone) _then)
      : super(_value, (v) => _then(v as _$Gone));

  @override
  _$Gone get _value => super._value as _$Gone;
}

/// @nodoc

class _$Gone implements Gone {
  const _$Gone();

  @override
  String toString() {
    return 'ApiState.gone()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Gone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() signedOut,
    required TResult Function() authInit,
    required TResult Function() gone,
  }) {
    return gone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? signedOut,
    TResult Function()? authInit,
    TResult Function()? gone,
  }) {
    return gone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? signedOut,
    TResult Function()? authInit,
    TResult Function()? gone,
    required TResult orElse(),
  }) {
    if (gone != null) {
      return gone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(AuthInit value) authInit,
    required TResult Function(Gone value) gone,
  }) {
    return gone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(AuthInit value)? authInit,
    TResult Function(Gone value)? gone,
  }) {
    return gone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(AuthInit value)? authInit,
    TResult Function(Gone value)? gone,
    required TResult orElse(),
  }) {
    if (gone != null) {
      return gone(this);
    }
    return orElse();
  }
}

abstract class Gone implements ApiState {
  const factory Gone() = _$Gone;
}

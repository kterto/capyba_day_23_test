// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sample_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SampleState {
  SampleFlow get flow => throw _privateConstructorUsedError;
  SignInForm get signInForm => throw _privateConstructorUsedError;
  RequestStatus<dynamic> get signInRequestStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SampleStateCopyWith<SampleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleStateCopyWith<$Res> {
  factory $SampleStateCopyWith(
          SampleState value, $Res Function(SampleState) then) =
      _$SampleStateCopyWithImpl<$Res>;
  $Res call(
      {SampleFlow flow,
      SignInForm signInForm,
      RequestStatus<dynamic> signInRequestStatus});

  $SampleFlowCopyWith<$Res> get flow;
  $SignInFormCopyWith<$Res> get signInForm;
  $RequestStatusCopyWith<dynamic, $Res> get signInRequestStatus;
}

/// @nodoc
class _$SampleStateCopyWithImpl<$Res> implements $SampleStateCopyWith<$Res> {
  _$SampleStateCopyWithImpl(this._value, this._then);

  final SampleState _value;
  // ignore: unused_field
  final $Res Function(SampleState) _then;

  @override
  $Res call({
    Object? flow = freezed,
    Object? signInForm = freezed,
    Object? signInRequestStatus = freezed,
  }) {
    return _then(_value.copyWith(
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as SampleFlow,
      signInForm: signInForm == freezed
          ? _value.signInForm
          : signInForm // ignore: cast_nullable_to_non_nullable
              as SignInForm,
      signInRequestStatus: signInRequestStatus == freezed
          ? _value.signInRequestStatus
          : signInRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<dynamic>,
    ));
  }

  @override
  $SampleFlowCopyWith<$Res> get flow {
    return $SampleFlowCopyWith<$Res>(_value.flow, (value) {
      return _then(_value.copyWith(flow: value));
    });
  }

  @override
  $SignInFormCopyWith<$Res> get signInForm {
    return $SignInFormCopyWith<$Res>(_value.signInForm, (value) {
      return _then(_value.copyWith(signInForm: value));
    });
  }

  @override
  $RequestStatusCopyWith<dynamic, $Res> get signInRequestStatus {
    return $RequestStatusCopyWith<dynamic, $Res>(_value.signInRequestStatus,
        (value) {
      return _then(_value.copyWith(signInRequestStatus: value));
    });
  }
}

/// @nodoc
abstract class _$$_SampleStateCopyWith<$Res>
    implements $SampleStateCopyWith<$Res> {
  factory _$$_SampleStateCopyWith(
          _$_SampleState value, $Res Function(_$_SampleState) then) =
      __$$_SampleStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {SampleFlow flow,
      SignInForm signInForm,
      RequestStatus<dynamic> signInRequestStatus});

  @override
  $SampleFlowCopyWith<$Res> get flow;
  @override
  $SignInFormCopyWith<$Res> get signInForm;
  @override
  $RequestStatusCopyWith<dynamic, $Res> get signInRequestStatus;
}

/// @nodoc
class __$$_SampleStateCopyWithImpl<$Res> extends _$SampleStateCopyWithImpl<$Res>
    implements _$$_SampleStateCopyWith<$Res> {
  __$$_SampleStateCopyWithImpl(
      _$_SampleState _value, $Res Function(_$_SampleState) _then)
      : super(_value, (v) => _then(v as _$_SampleState));

  @override
  _$_SampleState get _value => super._value as _$_SampleState;

  @override
  $Res call({
    Object? flow = freezed,
    Object? signInForm = freezed,
    Object? signInRequestStatus = freezed,
  }) {
    return _then(_$_SampleState(
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as SampleFlow,
      signInForm: signInForm == freezed
          ? _value.signInForm
          : signInForm // ignore: cast_nullable_to_non_nullable
              as SignInForm,
      signInRequestStatus: signInRequestStatus == freezed
          ? _value.signInRequestStatus
          : signInRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<dynamic>,
    ));
  }
}

/// @nodoc

class _$_SampleState extends _SampleState {
  const _$_SampleState(
      {required this.flow,
      required this.signInForm,
      required this.signInRequestStatus})
      : super._();

  @override
  final SampleFlow flow;
  @override
  final SignInForm signInForm;
  @override
  final RequestStatus<dynamic> signInRequestStatus;

  @override
  String toString() {
    return 'SampleState(flow: $flow, signInForm: $signInForm, signInRequestStatus: $signInRequestStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SampleState &&
            const DeepCollectionEquality().equals(other.flow, flow) &&
            const DeepCollectionEquality()
                .equals(other.signInForm, signInForm) &&
            const DeepCollectionEquality()
                .equals(other.signInRequestStatus, signInRequestStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(flow),
      const DeepCollectionEquality().hash(signInForm),
      const DeepCollectionEquality().hash(signInRequestStatus));

  @JsonKey(ignore: true)
  @override
  _$$_SampleStateCopyWith<_$_SampleState> get copyWith =>
      __$$_SampleStateCopyWithImpl<_$_SampleState>(this, _$identity);
}

abstract class _SampleState extends SampleState {
  const factory _SampleState(
          {required final SampleFlow flow,
          required final SignInForm signInForm,
          required final RequestStatus<dynamic> signInRequestStatus}) =
      _$_SampleState;
  const _SampleState._() : super._();

  @override
  SampleFlow get flow;
  @override
  SignInForm get signInForm;
  @override
  RequestStatus<dynamic> get signInRequestStatus;
  @override
  @JsonKey(ignore: true)
  _$$_SampleStateCopyWith<_$_SampleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SampleFlow {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() login,
    required TResult Function() home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? login,
    TResult Function()? home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? login,
    TResult Function()? home,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(Login value) login,
    required TResult Function(Home value) home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Login value)? login,
    TResult Function(Home value)? home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Login value)? login,
    TResult Function(Home value)? home,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleFlowCopyWith<$Res> {
  factory $SampleFlowCopyWith(
          SampleFlow value, $Res Function(SampleFlow) then) =
      _$SampleFlowCopyWithImpl<$Res>;
}

/// @nodoc
class _$SampleFlowCopyWithImpl<$Res> implements $SampleFlowCopyWith<$Res> {
  _$SampleFlowCopyWithImpl(this._value, this._then);

  final SampleFlow _value;
  // ignore: unused_field
  final $Res Function(SampleFlow) _then;
}

/// @nodoc
abstract class _$$SplashCopyWith<$Res> {
  factory _$$SplashCopyWith(_$Splash value, $Res Function(_$Splash) then) =
      __$$SplashCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashCopyWithImpl<$Res> extends _$SampleFlowCopyWithImpl<$Res>
    implements _$$SplashCopyWith<$Res> {
  __$$SplashCopyWithImpl(_$Splash _value, $Res Function(_$Splash) _then)
      : super(_value, (v) => _then(v as _$Splash));

  @override
  _$Splash get _value => super._value as _$Splash;
}

/// @nodoc

class _$Splash implements Splash {
  const _$Splash();

  @override
  String toString() {
    return 'SampleFlow.splash()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Splash);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() login,
    required TResult Function() home,
  }) {
    return splash();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? login,
    TResult Function()? home,
  }) {
    return splash?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? login,
    TResult Function()? home,
    required TResult orElse(),
  }) {
    if (splash != null) {
      return splash();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(Login value) login,
    required TResult Function(Home value) home,
  }) {
    return splash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Login value)? login,
    TResult Function(Home value)? home,
  }) {
    return splash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Login value)? login,
    TResult Function(Home value)? home,
    required TResult orElse(),
  }) {
    if (splash != null) {
      return splash(this);
    }
    return orElse();
  }
}

abstract class Splash implements SampleFlow {
  const factory Splash() = _$Splash;
}

/// @nodoc
abstract class _$$LoginCopyWith<$Res> {
  factory _$$LoginCopyWith(_$Login value, $Res Function(_$Login) then) =
      __$$LoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginCopyWithImpl<$Res> extends _$SampleFlowCopyWithImpl<$Res>
    implements _$$LoginCopyWith<$Res> {
  __$$LoginCopyWithImpl(_$Login _value, $Res Function(_$Login) _then)
      : super(_value, (v) => _then(v as _$Login));

  @override
  _$Login get _value => super._value as _$Login;
}

/// @nodoc

class _$Login implements Login {
  const _$Login();

  @override
  String toString() {
    return 'SampleFlow.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Login);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() login,
    required TResult Function() home,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? login,
    TResult Function()? home,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? login,
    TResult Function()? home,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(Login value) login,
    required TResult Function(Home value) home,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Login value)? login,
    TResult Function(Home value)? home,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Login value)? login,
    TResult Function(Home value)? home,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class Login implements SampleFlow {
  const factory Login() = _$Login;
}

/// @nodoc
abstract class _$$HomeCopyWith<$Res> {
  factory _$$HomeCopyWith(_$Home value, $Res Function(_$Home) then) =
      __$$HomeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeCopyWithImpl<$Res> extends _$SampleFlowCopyWithImpl<$Res>
    implements _$$HomeCopyWith<$Res> {
  __$$HomeCopyWithImpl(_$Home _value, $Res Function(_$Home) _then)
      : super(_value, (v) => _then(v as _$Home));

  @override
  _$Home get _value => super._value as _$Home;
}

/// @nodoc

class _$Home implements Home {
  const _$Home();

  @override
  String toString() {
    return 'SampleFlow.home()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Home);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() splash,
    required TResult Function() login,
    required TResult Function() home,
  }) {
    return home();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? login,
    TResult Function()? home,
  }) {
    return home?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? splash,
    TResult Function()? login,
    TResult Function()? home,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Splash value) splash,
    required TResult Function(Login value) login,
    required TResult Function(Home value) home,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Login value)? login,
    TResult Function(Home value)? home,
  }) {
    return home?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Splash value)? splash,
    TResult Function(Login value)? login,
    TResult Function(Home value)? home,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class Home implements SampleFlow {
  const factory Home() = _$Home;
}

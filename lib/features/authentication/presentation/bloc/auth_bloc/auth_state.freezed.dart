// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SPUser user) userSignedIn,
    required TResult Function() userNotSignedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SPUser user)? userSignedIn,
    TResult Function()? userNotSignedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SPUser user)? userSignedIn,
    TResult Function()? userNotSignedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(UserSignedIn value) userSignedIn,
    required TResult Function(UserNotSignedIn value) userNotSignedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(UserSignedIn value)? userSignedIn,
    TResult Function(UserNotSignedIn value)? userNotSignedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(UserSignedIn value)? userSignedIn,
    TResult Function(UserNotSignedIn value)? userNotSignedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$$InitialStateCopyWith<$Res> {
  factory _$$InitialStateCopyWith(
          _$InitialState value, $Res Function(_$InitialState) then) =
      __$$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$InitialStateCopyWith<$Res> {
  __$$InitialStateCopyWithImpl(
      _$InitialState _value, $Res Function(_$InitialState) _then)
      : super(_value, (v) => _then(v as _$InitialState));

  @override
  _$InitialState get _value => super._value as _$InitialState;
}

/// @nodoc

class _$InitialState implements InitialState {
  const _$InitialState();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SPUser user) userSignedIn,
    required TResult Function() userNotSignedIn,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SPUser user)? userSignedIn,
    TResult Function()? userNotSignedIn,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SPUser user)? userSignedIn,
    TResult Function()? userNotSignedIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(UserSignedIn value) userSignedIn,
    required TResult Function(UserNotSignedIn value) userNotSignedIn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(UserSignedIn value)? userSignedIn,
    TResult Function(UserNotSignedIn value)? userNotSignedIn,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(UserSignedIn value)? userSignedIn,
    TResult Function(UserNotSignedIn value)? userNotSignedIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements AuthState {
  const factory InitialState() = _$InitialState;
}

/// @nodoc
abstract class _$$UserSignedInCopyWith<$Res> {
  factory _$$UserSignedInCopyWith(
          _$UserSignedIn value, $Res Function(_$UserSignedIn) then) =
      __$$UserSignedInCopyWithImpl<$Res>;
  $Res call({SPUser user});
}

/// @nodoc
class __$$UserSignedInCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$UserSignedInCopyWith<$Res> {
  __$$UserSignedInCopyWithImpl(
      _$UserSignedIn _value, $Res Function(_$UserSignedIn) _then)
      : super(_value, (v) => _then(v as _$UserSignedIn));

  @override
  _$UserSignedIn get _value => super._value as _$UserSignedIn;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$UserSignedIn(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as SPUser,
    ));
  }
}

/// @nodoc

class _$UserSignedIn implements UserSignedIn {
  const _$UserSignedIn(this.user);

  @override
  final SPUser user;

  @override
  String toString() {
    return 'AuthState.userSignedIn(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSignedIn &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$UserSignedInCopyWith<_$UserSignedIn> get copyWith =>
      __$$UserSignedInCopyWithImpl<_$UserSignedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SPUser user) userSignedIn,
    required TResult Function() userNotSignedIn,
  }) {
    return userSignedIn(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SPUser user)? userSignedIn,
    TResult Function()? userNotSignedIn,
  }) {
    return userSignedIn?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SPUser user)? userSignedIn,
    TResult Function()? userNotSignedIn,
    required TResult orElse(),
  }) {
    if (userSignedIn != null) {
      return userSignedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(UserSignedIn value) userSignedIn,
    required TResult Function(UserNotSignedIn value) userNotSignedIn,
  }) {
    return userSignedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(UserSignedIn value)? userSignedIn,
    TResult Function(UserNotSignedIn value)? userNotSignedIn,
  }) {
    return userSignedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(UserSignedIn value)? userSignedIn,
    TResult Function(UserNotSignedIn value)? userNotSignedIn,
    required TResult orElse(),
  }) {
    if (userSignedIn != null) {
      return userSignedIn(this);
    }
    return orElse();
  }
}

abstract class UserSignedIn implements AuthState {
  const factory UserSignedIn(final SPUser user) = _$UserSignedIn;

  SPUser get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UserSignedInCopyWith<_$UserSignedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserNotSignedInCopyWith<$Res> {
  factory _$$UserNotSignedInCopyWith(
          _$UserNotSignedIn value, $Res Function(_$UserNotSignedIn) then) =
      __$$UserNotSignedInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserNotSignedInCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$UserNotSignedInCopyWith<$Res> {
  __$$UserNotSignedInCopyWithImpl(
      _$UserNotSignedIn _value, $Res Function(_$UserNotSignedIn) _then)
      : super(_value, (v) => _then(v as _$UserNotSignedIn));

  @override
  _$UserNotSignedIn get _value => super._value as _$UserNotSignedIn;
}

/// @nodoc

class _$UserNotSignedIn implements UserNotSignedIn {
  const _$UserNotSignedIn();

  @override
  String toString() {
    return 'AuthState.userNotSignedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserNotSignedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(SPUser user) userSignedIn,
    required TResult Function() userNotSignedIn,
  }) {
    return userNotSignedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SPUser user)? userSignedIn,
    TResult Function()? userNotSignedIn,
  }) {
    return userNotSignedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(SPUser user)? userSignedIn,
    TResult Function()? userNotSignedIn,
    required TResult orElse(),
  }) {
    if (userNotSignedIn != null) {
      return userNotSignedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(UserSignedIn value) userSignedIn,
    required TResult Function(UserNotSignedIn value) userNotSignedIn,
  }) {
    return userNotSignedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(UserSignedIn value)? userSignedIn,
    TResult Function(UserNotSignedIn value)? userNotSignedIn,
  }) {
    return userNotSignedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(UserSignedIn value)? userSignedIn,
    TResult Function(UserNotSignedIn value)? userNotSignedIn,
    required TResult orElse(),
  }) {
    if (userNotSignedIn != null) {
      return userNotSignedIn(this);
    }
    return orElse();
  }
}

abstract class UserNotSignedIn implements AuthState {
  const factory UserNotSignedIn() = _$UserNotSignedIn;
}

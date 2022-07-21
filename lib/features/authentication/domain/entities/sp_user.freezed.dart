// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sp_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SPUser {
  String get uid => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SPUserCopyWith<SPUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SPUserCopyWith<$Res> {
  factory $SPUserCopyWith(SPUser value, $Res Function(SPUser) then) =
      _$SPUserCopyWithImpl<$Res>;
  $Res call({String uid, String userName, String email});
}

/// @nodoc
class _$SPUserCopyWithImpl<$Res> implements $SPUserCopyWith<$Res> {
  _$SPUserCopyWithImpl(this._value, this._then);

  final SPUser _value;
  // ignore: unused_field
  final $Res Function(SPUser) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? userName = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SPUserCopyWith<$Res> implements $SPUserCopyWith<$Res> {
  factory _$$_SPUserCopyWith(_$_SPUser value, $Res Function(_$_SPUser) then) =
      __$$_SPUserCopyWithImpl<$Res>;
  @override
  $Res call({String uid, String userName, String email});
}

/// @nodoc
class __$$_SPUserCopyWithImpl<$Res> extends _$SPUserCopyWithImpl<$Res>
    implements _$$_SPUserCopyWith<$Res> {
  __$$_SPUserCopyWithImpl(_$_SPUser _value, $Res Function(_$_SPUser) _then)
      : super(_value, (v) => _then(v as _$_SPUser));

  @override
  _$_SPUser get _value => super._value as _$_SPUser;

  @override
  $Res call({
    Object? uid = freezed,
    Object? userName = freezed,
    Object? email = freezed,
  }) {
    return _then(_$_SPUser(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SPUser implements _SPUser {
  const _$_SPUser(
      {required this.uid, required this.userName, required this.email});

  @override
  final String uid;
  @override
  final String userName;
  @override
  final String email;

  @override
  String toString() {
    return 'SPUser(uid: $uid, userName: $userName, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SPUser &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$_SPUserCopyWith<_$_SPUser> get copyWith =>
      __$$_SPUserCopyWithImpl<_$_SPUser>(this, _$identity);
}

abstract class _SPUser implements SPUser {
  const factory _SPUser(
      {required final String uid,
      required final String userName,
      required final String email}) = _$_SPUser;

  @override
  String get uid;
  @override
  String get userName;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_SPUserCopyWith<_$_SPUser> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'validation_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValidationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String displayNameStr) displayNameChanged,
    required TResult Function() toggleSignInAndRegisterPage,
    required TResult Function() buttonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String displayNameStr)? displayNameChanged,
    TResult Function()? toggleSignInAndRegisterPage,
    TResult Function()? buttonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String displayNameStr)? displayNameChanged,
    TResult Function()? toggleSignInAndRegisterPage,
    TResult Function()? buttonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(ToggleSignInAndRegisterPage value)
        toggleSignInAndRegisterPage,
    required TResult Function(ButtonPressed value) buttonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(ToggleSignInAndRegisterPage value)?
        toggleSignInAndRegisterPage,
    TResult Function(ButtonPressed value)? buttonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(ToggleSignInAndRegisterPage value)?
        toggleSignInAndRegisterPage,
    TResult Function(ButtonPressed value)? buttonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationEventCopyWith<$Res> {
  factory $ValidationEventCopyWith(
          ValidationEvent value, $Res Function(ValidationEvent) then) =
      _$ValidationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ValidationEventCopyWithImpl<$Res>
    implements $ValidationEventCopyWith<$Res> {
  _$ValidationEventCopyWithImpl(this._value, this._then);

  final ValidationEvent _value;
  // ignore: unused_field
  final $Res Function(ValidationEvent) _then;
}

/// @nodoc
abstract class _$$EmailChangedCopyWith<$Res> {
  factory _$$EmailChangedCopyWith(
          _$EmailChanged value, $Res Function(_$EmailChanged) then) =
      __$$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class __$$EmailChangedCopyWithImpl<$Res>
    extends _$ValidationEventCopyWithImpl<$Res>
    implements _$$EmailChangedCopyWith<$Res> {
  __$$EmailChangedCopyWithImpl(
      _$EmailChanged _value, $Res Function(_$EmailChanged) _then)
      : super(_value, (v) => _then(v as _$EmailChanged));

  @override
  _$EmailChanged get _value => super._value as _$EmailChanged;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(_$EmailChanged(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  _$EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'ValidationEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChanged &&
            const DeepCollectionEquality().equals(other.emailStr, emailStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(emailStr));

  @JsonKey(ignore: true)
  @override
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      __$$EmailChangedCopyWithImpl<_$EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String displayNameStr) displayNameChanged,
    required TResult Function() toggleSignInAndRegisterPage,
    required TResult Function() buttonPressed,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String displayNameStr)? displayNameChanged,
    TResult Function()? toggleSignInAndRegisterPage,
    TResult Function()? buttonPressed,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String displayNameStr)? displayNameChanged,
    TResult Function()? toggleSignInAndRegisterPage,
    TResult Function()? buttonPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(ToggleSignInAndRegisterPage value)
        toggleSignInAndRegisterPage,
    required TResult Function(ButtonPressed value) buttonPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(ToggleSignInAndRegisterPage value)?
        toggleSignInAndRegisterPage,
    TResult Function(ButtonPressed value)? buttonPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(ToggleSignInAndRegisterPage value)?
        toggleSignInAndRegisterPage,
    TResult Function(ButtonPressed value)? buttonPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements ValidationEvent {
  factory EmailChanged(final String emailStr) = _$EmailChanged;

  String get emailStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedCopyWith<$Res> {
  factory _$$PasswordChangedCopyWith(
          _$PasswordChanged value, $Res Function(_$PasswordChanged) then) =
      __$$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class __$$PasswordChangedCopyWithImpl<$Res>
    extends _$ValidationEventCopyWithImpl<$Res>
    implements _$$PasswordChangedCopyWith<$Res> {
  __$$PasswordChangedCopyWithImpl(
      _$PasswordChanged _value, $Res Function(_$PasswordChanged) _then)
      : super(_value, (v) => _then(v as _$PasswordChanged));

  @override
  _$PasswordChanged get _value => super._value as _$PasswordChanged;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(_$PasswordChanged(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  _$PasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'ValidationEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChanged &&
            const DeepCollectionEquality()
                .equals(other.passwordStr, passwordStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(passwordStr));

  @JsonKey(ignore: true)
  @override
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      __$$PasswordChangedCopyWithImpl<_$PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String displayNameStr) displayNameChanged,
    required TResult Function() toggleSignInAndRegisterPage,
    required TResult Function() buttonPressed,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String displayNameStr)? displayNameChanged,
    TResult Function()? toggleSignInAndRegisterPage,
    TResult Function()? buttonPressed,
  }) {
    return passwordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String displayNameStr)? displayNameChanged,
    TResult Function()? toggleSignInAndRegisterPage,
    TResult Function()? buttonPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(ToggleSignInAndRegisterPage value)
        toggleSignInAndRegisterPage,
    required TResult Function(ButtonPressed value) buttonPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(ToggleSignInAndRegisterPage value)?
        toggleSignInAndRegisterPage,
    TResult Function(ButtonPressed value)? buttonPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(ToggleSignInAndRegisterPage value)?
        toggleSignInAndRegisterPage,
    TResult Function(ButtonPressed value)? buttonPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements ValidationEvent {
  factory PasswordChanged(final String passwordStr) = _$PasswordChanged;

  String get passwordStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisplayNameChangedCopyWith<$Res> {
  factory _$$DisplayNameChangedCopyWith(_$DisplayNameChanged value,
          $Res Function(_$DisplayNameChanged) then) =
      __$$DisplayNameChangedCopyWithImpl<$Res>;
  $Res call({String displayNameStr});
}

/// @nodoc
class __$$DisplayNameChangedCopyWithImpl<$Res>
    extends _$ValidationEventCopyWithImpl<$Res>
    implements _$$DisplayNameChangedCopyWith<$Res> {
  __$$DisplayNameChangedCopyWithImpl(
      _$DisplayNameChanged _value, $Res Function(_$DisplayNameChanged) _then)
      : super(_value, (v) => _then(v as _$DisplayNameChanged));

  @override
  _$DisplayNameChanged get _value => super._value as _$DisplayNameChanged;

  @override
  $Res call({
    Object? displayNameStr = freezed,
  }) {
    return _then(_$DisplayNameChanged(
      displayNameStr == freezed
          ? _value.displayNameStr
          : displayNameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DisplayNameChanged implements DisplayNameChanged {
  _$DisplayNameChanged(this.displayNameStr);

  @override
  final String displayNameStr;

  @override
  String toString() {
    return 'ValidationEvent.displayNameChanged(displayNameStr: $displayNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayNameChanged &&
            const DeepCollectionEquality()
                .equals(other.displayNameStr, displayNameStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(displayNameStr));

  @JsonKey(ignore: true)
  @override
  _$$DisplayNameChangedCopyWith<_$DisplayNameChanged> get copyWith =>
      __$$DisplayNameChangedCopyWithImpl<_$DisplayNameChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String displayNameStr) displayNameChanged,
    required TResult Function() toggleSignInAndRegisterPage,
    required TResult Function() buttonPressed,
  }) {
    return displayNameChanged(displayNameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String displayNameStr)? displayNameChanged,
    TResult Function()? toggleSignInAndRegisterPage,
    TResult Function()? buttonPressed,
  }) {
    return displayNameChanged?.call(displayNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String displayNameStr)? displayNameChanged,
    TResult Function()? toggleSignInAndRegisterPage,
    TResult Function()? buttonPressed,
    required TResult orElse(),
  }) {
    if (displayNameChanged != null) {
      return displayNameChanged(displayNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(ToggleSignInAndRegisterPage value)
        toggleSignInAndRegisterPage,
    required TResult Function(ButtonPressed value) buttonPressed,
  }) {
    return displayNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(ToggleSignInAndRegisterPage value)?
        toggleSignInAndRegisterPage,
    TResult Function(ButtonPressed value)? buttonPressed,
  }) {
    return displayNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(ToggleSignInAndRegisterPage value)?
        toggleSignInAndRegisterPage,
    TResult Function(ButtonPressed value)? buttonPressed,
    required TResult orElse(),
  }) {
    if (displayNameChanged != null) {
      return displayNameChanged(this);
    }
    return orElse();
  }
}

abstract class DisplayNameChanged implements ValidationEvent {
  factory DisplayNameChanged(final String displayNameStr) =
      _$DisplayNameChanged;

  String get displayNameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DisplayNameChangedCopyWith<_$DisplayNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleSignInAndRegisterPageCopyWith<$Res> {
  factory _$$ToggleSignInAndRegisterPageCopyWith(
          _$ToggleSignInAndRegisterPage value,
          $Res Function(_$ToggleSignInAndRegisterPage) then) =
      __$$ToggleSignInAndRegisterPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleSignInAndRegisterPageCopyWithImpl<$Res>
    extends _$ValidationEventCopyWithImpl<$Res>
    implements _$$ToggleSignInAndRegisterPageCopyWith<$Res> {
  __$$ToggleSignInAndRegisterPageCopyWithImpl(
      _$ToggleSignInAndRegisterPage _value,
      $Res Function(_$ToggleSignInAndRegisterPage) _then)
      : super(_value, (v) => _then(v as _$ToggleSignInAndRegisterPage));

  @override
  _$ToggleSignInAndRegisterPage get _value =>
      super._value as _$ToggleSignInAndRegisterPage;
}

/// @nodoc

class _$ToggleSignInAndRegisterPage implements ToggleSignInAndRegisterPage {
  _$ToggleSignInAndRegisterPage();

  @override
  String toString() {
    return 'ValidationEvent.toggleSignInAndRegisterPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleSignInAndRegisterPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String displayNameStr) displayNameChanged,
    required TResult Function() toggleSignInAndRegisterPage,
    required TResult Function() buttonPressed,
  }) {
    return toggleSignInAndRegisterPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String displayNameStr)? displayNameChanged,
    TResult Function()? toggleSignInAndRegisterPage,
    TResult Function()? buttonPressed,
  }) {
    return toggleSignInAndRegisterPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String displayNameStr)? displayNameChanged,
    TResult Function()? toggleSignInAndRegisterPage,
    TResult Function()? buttonPressed,
    required TResult orElse(),
  }) {
    if (toggleSignInAndRegisterPage != null) {
      return toggleSignInAndRegisterPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(ToggleSignInAndRegisterPage value)
        toggleSignInAndRegisterPage,
    required TResult Function(ButtonPressed value) buttonPressed,
  }) {
    return toggleSignInAndRegisterPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(ToggleSignInAndRegisterPage value)?
        toggleSignInAndRegisterPage,
    TResult Function(ButtonPressed value)? buttonPressed,
  }) {
    return toggleSignInAndRegisterPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(ToggleSignInAndRegisterPage value)?
        toggleSignInAndRegisterPage,
    TResult Function(ButtonPressed value)? buttonPressed,
    required TResult orElse(),
  }) {
    if (toggleSignInAndRegisterPage != null) {
      return toggleSignInAndRegisterPage(this);
    }
    return orElse();
  }
}

abstract class ToggleSignInAndRegisterPage implements ValidationEvent {
  factory ToggleSignInAndRegisterPage() = _$ToggleSignInAndRegisterPage;
}

/// @nodoc
abstract class _$$ButtonPressedCopyWith<$Res> {
  factory _$$ButtonPressedCopyWith(
          _$ButtonPressed value, $Res Function(_$ButtonPressed) then) =
      __$$ButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ButtonPressedCopyWithImpl<$Res>
    extends _$ValidationEventCopyWithImpl<$Res>
    implements _$$ButtonPressedCopyWith<$Res> {
  __$$ButtonPressedCopyWithImpl(
      _$ButtonPressed _value, $Res Function(_$ButtonPressed) _then)
      : super(_value, (v) => _then(v as _$ButtonPressed));

  @override
  _$ButtonPressed get _value => super._value as _$ButtonPressed;
}

/// @nodoc

class _$ButtonPressed implements ButtonPressed {
  _$ButtonPressed();

  @override
  String toString() {
    return 'ValidationEvent.buttonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String displayNameStr) displayNameChanged,
    required TResult Function() toggleSignInAndRegisterPage,
    required TResult Function() buttonPressed,
  }) {
    return buttonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String displayNameStr)? displayNameChanged,
    TResult Function()? toggleSignInAndRegisterPage,
    TResult Function()? buttonPressed,
  }) {
    return buttonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String displayNameStr)? displayNameChanged,
    TResult Function()? toggleSignInAndRegisterPage,
    TResult Function()? buttonPressed,
    required TResult orElse(),
  }) {
    if (buttonPressed != null) {
      return buttonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(DisplayNameChanged value) displayNameChanged,
    required TResult Function(ToggleSignInAndRegisterPage value)
        toggleSignInAndRegisterPage,
    required TResult Function(ButtonPressed value) buttonPressed,
  }) {
    return buttonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(ToggleSignInAndRegisterPage value)?
        toggleSignInAndRegisterPage,
    TResult Function(ButtonPressed value)? buttonPressed,
  }) {
    return buttonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(DisplayNameChanged value)? displayNameChanged,
    TResult Function(ToggleSignInAndRegisterPage value)?
        toggleSignInAndRegisterPage,
    TResult Function(ButtonPressed value)? buttonPressed,
    required TResult orElse(),
  }) {
    if (buttonPressed != null) {
      return buttonPressed(this);
    }
    return orElse();
  }
}

abstract class ButtonPressed implements ValidationEvent {
  factory ButtonPressed() = _$ButtonPressed;
}

import '../../../../../core/adaptive/adaptive_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/errors_and_failures/failures/auth_failure.dart';
import '../../../domain/entities/password.dart';
import '../../bloc/validation_bloc/validation_bloc.dart';

class PasswordInputBox extends StatelessWidget {
  const PasswordInputBox({Key? key}) : super(key: key);
  final TextInputType inputType = TextInputType.visiblePassword;
  final bool obscureText = true;
  Function(String) getOnChangedFn(BuildContext context, ValidationState state) {
    return (newValue) => context.read<ValidationBloc>().add(PasswordChanged(newValue));
  }

  String? _getErrorText(BuildContext context, ValidationState state) {
    final ValidationState validationState = context.read<ValidationBloc>().state;
    if (validationState.showErrorMessages) {
      Password password = validationState.password;
      if (!password.isValid()) {
        return password.failureOrUnit.fold((l) => l.failedReason, (r) => null);
      }
      return validationState.authFailureOrSuccessOption.fold(
        () => null,
        (a) => a.fold(
          _generateAuthFailureMapper(validationState),
          (r) => null,
        ),
      );
    }
    return null;
  }

  String? Function(AuthFailure) _generateAuthFailureMapper(ValidationState state) {
    return (AuthFailure failure) => _mapAuthFailureToEmailText(state, failure);
  }

  String? _mapAuthFailureToEmailText(ValidationState state, AuthFailure failure) {
    if (failure == AuthFailure.wrongPassword() && state.isSignIn) {
      return "Wrong Password, please try again.";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ValidationBloc, ValidationState>(
      builder: (context, state) {
        return AdaptiveTextField(
          inputType: inputType,
          obscureText: obscureText,
          getOnChangedFn: getOnChangedFn,
          prefixIcon: const Icon(Icons.password),
          hintText: "Password",
          errorText: _getErrorText(context, state),
        );
      },
    );
  }
}

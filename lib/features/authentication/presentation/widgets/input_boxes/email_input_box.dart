import 'package:copypaste/core/adaptive/adaptive_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/errors_and_failures/failures/auth_failure.dart';
import '../../../domain/entities/email.dart';
import '../../bloc/validation_bloc/validation_bloc.dart';

class EmailInputBox extends StatelessWidget {
  const EmailInputBox({Key? key}) : super(key: key);
  final obscureText = false;
  final TextInputType inputType = TextInputType.emailAddress;
  Function(String) getOnChangedFn(BuildContext context, ValidationState state) {
    return (newValue) => context.read<ValidationBloc>().add(EmailChanged(newValue));
  }

  String? _getErrorText(BuildContext context, ValidationState state) {
    final ValidationState validationState = context.read<ValidationBloc>().state;
    if (validationState.showErrorMessages) {
      Email email = validationState.email;
      if (!email.isValid()) {
        return email.failureOrUnit.fold((l) => l.failedReason, (r) => null);
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
    if (failure == AuthFailure.emailAlreadyInUse() && !state.isSignIn) {
      return "Email is already in use. Please signup with another email or try sign in.";
    }
    if (failure == AuthFailure.userNotFound() && state.isSignIn) {
      return "User not found. Please check your email address or try sign in.";
    }
    if (failure == AuthFailure.userDisabled()) {
      return "This user has been banned.";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ValidationBloc, ValidationState>(builder: (context, state) {
      return AdaptiveTextField(
        inputType: inputType,
        obscureText: obscureText,
        getOnChangedFn: getOnChangedFn,
        prefixIcon: const Icon(Icons.email),
        hintText: "Email",
        errorText: _getErrorText(context, state),
      );
    });
  }
}

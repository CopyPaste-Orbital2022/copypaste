import 'package:copypaste/features/authentication/presentation/widgets/input_boxes/raw_input_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/errors_and_failures/failures/auth_failure.dart';
import '../../../domain/entities/display_name.dart';
import '../../bloc/validation_bloc/validation_bloc.dart';

class UserNameInputBox extends StatelessWidget {
  const UserNameInputBox({Key? key}) : super(key: key);
  final obscureText = false;
  final TextInputType inputType = TextInputType.text;
  Function(String) getOnChangedFn(BuildContext context, ValidationState state) {
    return (newValue) => context
        .read<ValidationBloc>()
        .add(ValidationEvent.displayNameChanged(newValue));
  }

  String? _getErrorText(BuildContext context, ValidationState state) {
    final ValidationState validationState =
        context.read<ValidationBloc>().state;
    if (validationState.showErrorMessages) {
      DisplayName displayName = validationState.displayName;
      if (!displayName.isValid()) {
        return displayName.failureOrUnit
            .fold((l) => l.failedReason, (r) => null);
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

  String? Function(AuthFailure) _generateAuthFailureMapper(
      ValidationState state) {
    return (AuthFailure failure) => _mapAuthFailureToEmailText(state, failure);
  }

  String? _mapAuthFailureToEmailText(
      ValidationState state, AuthFailure failure) {
    if (failure == AuthFailure.invalidDisplayName() && !state.isSignIn) {
      return "Displayname is Invalid. Please enter a valid display name between 2 and 128 characters!";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ValidationBloc, ValidationState>(
      builder: (context, state) {
        return RawInputBox(
          inputType: inputType,
          obscureText: obscureText,
          getOnChangedFn: getOnChangedFn,
          prefixIcon: const Icon(Icons.person),
          hintText: "User Name",
          errorText: _getErrorText(context, state),
        );
      },
    );
  }
}

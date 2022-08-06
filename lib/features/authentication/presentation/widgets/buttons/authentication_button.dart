import 'package:copypaste/core/adaptive/adaptive_circular_indicator.dart';
import 'package:copypaste/core/adaptive/adaptive_elevated_button.dart';
import 'package:copypaste/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import '../../../../../core/errors_and_failures/failures/auth_failure.dart';
import '../sign_in_or_register_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/injections/injection.dart';
import '../../../../../core/routing/app_router.dart';
import '../../bloc/validation_bloc/validation_bloc.dart';

class AuthenticationButton extends StatelessWidget {
  const AuthenticationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ValidationBloc, ValidationState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
            () => {},
            (either) => {
                  either.fold(
                    (l) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Failed to Sign in: " + l.description()),
                        ),
                      );
                    },
                    (r) {
                      getIt<AuthBloc>().add(const AuthEvent.updateUserState());
                      getIt<AppRouter>().replace(const FileManagementRoute());
                    },
                  )
                });
      },
      builder: (context, state) {
        return AdaptiveElevatedButton(
          color: const Color(0xFFF5BC00),
          padding: EdgeInsets.zero,
          onPressed: () {
            context.read<ValidationBloc>().add(ValidationEvent.buttonPressed());
          },
          child: buildButtonChild(context, state),
        );
      },
    );
  }

  Widget buildButtonChild(BuildContext context, ValidationState state) {
    if (context.read<ValidationBloc>().state.isSubmitting) {
      return const Padding(
        padding: EdgeInsets.all(12),
        child: AdaptiveCircularIndicator(
          color: Colors.white,
        ),
      );
    } else {
      return const Padding(
        padding: EdgeInsets.all(20),
        child: SignInOrRegisterText(),
      );
    }
  }
}

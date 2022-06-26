import 'package:copypaste/features/file_management/presentation/bloc/file_management_bloc/file_management_bloc.dart';

import '../../../../../core/errors_and_failures/failures/auth_failure.dart';
import '../sign_in_or_register_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
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
                          content:
                              Text("Failed to Sign in: " + l.description()),
                        ),
                      );
                    },
                    (r) {
                      getIt<AppRouter>().replace(const FileManagementRoute());
                      // TODO: change the event to load drawings event
                      getIt<FileManagementBloc>().add(
                        const FileManagementEvent.initialEvent(),
                      );
                    },
                  )
                });
      },
      builder: (context, state) {
        return PlatformElevatedButton(
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
        child: CircularProgressIndicator(
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
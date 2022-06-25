import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import '../../../../core/injections/injection.dart';
import '../bloc/validation_bloc/validation_bloc.dart';
import '../widgets/buttons/authentication_button.dart';
import '../widgets/buttons/change_mode_button.dart';
import '../widgets/input_boxes/email_input_box.dart';
import '../widgets/input_boxes/password_input_box.dart';
import '../widgets/input_boxes/user_name_input_box_wrapper.dart';
import '../widgets/sign_in_or_register_text.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ValidationBloc>(),
      child: Scaffold(
        backgroundColor: const Color(0xFFEB7900),
        body: buildBody(),
      ),
    );
  }

  Widget buildBody() {
    return Center(
      child: SizedBox(
        width: 300,
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 100),
              PlatformText(
                "Welcome to SketchPaste",
                style: const TextStyle(
                  fontSize: 37,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              PlatformText(
                "Sketch, Paste!",
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              const UserNameInputBoxWrapper(),
              const EmailInputBox(),
              const SizedBox(height: 20),
              const PasswordInputBox(),
              const SizedBox(height: 20),
              const AuthenticationButton(),
              const SizedBox(height: 20),
              const ChangeModeButton(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

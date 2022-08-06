import 'package:flutter/foundation.dart';
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
import 'package:macos_ui/macos_ui.dart' as macos;

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key, this.backgroundColor = const Color(0xFFEB7900)}) : super(key: key);

  final Color backgroundColor;

  Widget _buildBody() {
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

  Widget _buildScaffold(BuildContext context) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.macOS:
        return macos.MacosWindow(
          child: macos.MacosScaffold(
            children: [
              macos.ContentArea(builder: (context, scrollController) {
                return _buildBody();
              })
            ],
            backgroundColor: backgroundColor,
          ),
          backgroundColor: backgroundColor,
        );
      default:
        return PlatformScaffold(
          backgroundColor: backgroundColor,
          body: _buildBody(),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ValidationBloc>(),
      child: _buildScaffold(context),
    );
  }
}

import '../sign_in_or_register_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import '../../bloc/validation_bloc/validation_bloc.dart';

class ChangeModeButton extends StatelessWidget {
  const ChangeModeButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ValidationBloc, ValidationState>(
        builder: (context, state) {
          return PlatformTextButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              context.read<ValidationBloc>().add(ToggleSignInAndRegisterPage());
            },
            child: const SignInOrRegisterText(
              reversed: true,
              prefix: "Switch to ",
            ),
          );
        },
        listener: (context, state) {});
  }
}

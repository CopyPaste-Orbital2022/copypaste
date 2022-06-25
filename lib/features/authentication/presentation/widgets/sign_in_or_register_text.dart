import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/validation_bloc/validation_bloc.dart';
import '../bloc/validation_bloc/validation_state.dart';

class SignInOrRegisterText extends StatelessWidget {
  const SignInOrRegisterText(
      {Key? key, this.fontSize = 17, this.reversed = false, this.prefix = ""})
      : super(key: key);

  final double fontSize;
  final bool reversed;
  final String prefix;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ValidationBloc, ValidationState>(
      builder: (context, state) {
        return Text(
          prefix + (state.isSignIn ^ reversed ? "Sign In" : "Register"),
          style: TextStyle(
            fontSize: fontSize,
            color: Colors.white,
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}

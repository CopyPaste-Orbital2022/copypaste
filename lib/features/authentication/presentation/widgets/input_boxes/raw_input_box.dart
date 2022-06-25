import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/validation_bloc/validation_bloc.dart';

class RawInputBox extends StatelessWidget {
  const RawInputBox({
    Key? key,
    required this.inputType,
    required this.obscureText,
    required this.getOnChangedFn,
    required this.prefixIcon,
    required this.hintText,
    this.errorText,
  }) : super(key: key);

  final TextInputType inputType;
  final bool obscureText;
  final Function(String) Function(BuildContext context, ValidationState state)
      getOnChangedFn;
  final Widget prefixIcon;
  final String hintText;
  final String? errorText;

  InputDecoration getInputDecoration(
      BuildContext context, ValidationState state) {
    return InputDecoration(
      prefixIcon: prefixIcon,
      hintText: hintText,
      errorText: errorText,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ValidationBloc, ValidationState>(
      builder: (context, state) {
        return TextField(
          decoration: getInputDecoration(context, state),
          enableSuggestions: false,
          autocorrect: false,
          keyboardType: inputType,
          obscureText: obscureText,
          onChanged: getOnChangedFn(context, state),
          cursorColor: Colors.white,
          style: const TextStyle(
            color: Colors.white,
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}

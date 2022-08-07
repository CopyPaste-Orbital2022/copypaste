import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:macos_ui/macos_ui.dart' as macos;
import '../../features/authentication/presentation/bloc/validation_bloc/validation_bloc.dart';

class AdaptiveTextField extends StatelessWidget {
  const AdaptiveTextField({
    Key? key,
    this.hintText,
    this.autocorrect = false,
    this.keyboardType = TextInputType.text,
    this.controller,
    this.onSubmitted,
    this.onChanged,
  }) : super(key: key);

  final String? hintText;

  final bool autocorrect;

  final TextInputType keyboardType;

  final TextEditingController? controller;

  final ValueChanged<String>? onSubmitted;

  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.macOS:
        return macos.MacosTextField(
          placeholder: hintText,
          autocorrect: autocorrect,
          keyboardType: keyboardType,
          onSubmitted: onSubmitted,
          onChanged: onChanged,
        );
      default:
        return TextField(
          decoration: InputDecoration(
            hintText: hintText,
          ),
          autocorrect: autocorrect,
          keyboardType: keyboardType,
          onSubmitted: onSubmitted,
          onChanged: onChanged,
        );
    }
  }
}

class SPAdaptiveTextField extends StatelessWidget {
  const SPAdaptiveTextField({
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
  final Function(String) Function(BuildContext context, ValidationState state) getOnChangedFn;
  final Widget prefixIcon;
  final String hintText;
  final String? errorText;

  Widget _buildTextfield(BuildContext context, ValidationState state) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.macOS:
        return macos.MacosTextField(
          placeholder: hintText,
          autocorrect: false,
          keyboardType: inputType,
          obscureText: obscureText,
          onChanged: getOnChangedFn(context, state),
        );
      default:
        return PlatformTextField(
          hintText: hintText,
          scribbleEnabled: false,
          autocorrect: false,
          keyboardType: inputType,
          obscureText: obscureText,
          onChanged: getOnChangedFn(context, state),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ValidationBloc, ValidationState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildTextfield(context, state),
            errorText != null
                ? Text(
                    errorText!,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        );
      },
    );
  }
}

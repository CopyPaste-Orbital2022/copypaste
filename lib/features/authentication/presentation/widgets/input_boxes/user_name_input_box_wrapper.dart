import 'package:copypaste/features/authentication/presentation/widgets/input_boxes/user_name_input_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/validation_bloc/validation_bloc.dart';

class UserNameInputBoxWrapper extends StatelessWidget {
  const UserNameInputBoxWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ValidationBloc, ValidationState>(
        builder: (context, state) {
          if (!context.read<ValidationBloc>().state.isSignIn) {
            return Column(
              children: const [
                UserNameInputBox(),
                SizedBox(
                  height: 20,
                ),
              ],
            );
          } else {
            return const SizedBox.shrink();
          }
        },
        listener: (context, state) {});
  }
}

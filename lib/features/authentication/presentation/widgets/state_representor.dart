import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/validation_bloc/validation_bloc.dart';
import '../bloc/validation_bloc/validation_state.dart';

class StateRepresentor extends StatelessWidget {
  const StateRepresentor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ValidationBloc, ValidationState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(state.email.value.fold((l) => l.failedReason, (r) => r)),
            Text(state.password.value.fold((l) => l.failedReason, (r) => r)),
            Text(state.showErrorMessages
                ? "Show Error Messages"
                : "Hide Error Messages"),
            Text(state.isSubmitting ? "Submitting" : "Not Submitting"),
          ],
        );
      },
    );
  }
}

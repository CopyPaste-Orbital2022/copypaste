import 'eraser/eraser_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/injections/injection.dart';
import '../bloc/index.dart';
import 'pen/pen_button.dart';

class DrawingMenubarContent extends StatelessWidget {
  const DrawingMenubarContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DrawingBloc>(
          create: (context) => getIt<DrawingBloc>(),
        ),
        BlocProvider<DrawingEraserBloc>(
          create: (context) => getIt<DrawingEraserBloc>(),
        ),
        BlocProvider<DrawingPenBloc>(
          create: (context) => getIt<DrawingPenBloc>(),
        ),
      ],
      child: BlocListener<DrawingPenBloc, DrawingPenState>(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          PenButton(),
          EraserButton(),
        ]),
        listener: (context, state) {
          if (state.errorMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage!),
                backgroundColor: Colors.red,
              ),
            );
            context.read<DrawingPenBloc>().add(
                  const DrawingPenEvent.dismissErrorSnackbarEvent(),
                );
          }
        },
      ),
    );
  }
}

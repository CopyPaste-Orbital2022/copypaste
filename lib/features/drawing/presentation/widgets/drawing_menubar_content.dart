import 'package:copypaste/features/drawing/presentation/widgets/eraser/eraser_button.dart';
import 'package:copypaste/features/drawing/presentation/widgets/pencil/pencil_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/injections/injection.dart';
import '../bloc/index.dart';

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
        BlocProvider<DrawingPencilBloc>(
          create: (context) => getIt<DrawingPencilBloc>(),
        ),
      ],
      child: BlocListener<DrawingPencilBloc, DrawingPencilState>(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          PencilButton(),
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
            context.read<DrawingPencilBloc>().add(
                  const DrawingPencilEvent.dismissErrorSnackbarEvent(),
                );
          }
        },
      ),
    );
  }
}

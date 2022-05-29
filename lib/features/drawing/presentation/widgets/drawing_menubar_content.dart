import 'package:copypaste/features/drawing/presentation/widgets/eraser/eraser_button.dart';
import 'package:copypaste/features/drawing/presentation/widgets/pencil/pencil_button.dart';
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
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
        PencilButton(),
        EraserButton(),
      ]),
    );
  }
}

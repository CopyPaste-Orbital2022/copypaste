import 'package:copypaste/core/injections/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:scribble/scribble.dart';

import '../bloc/index.dart';
import '../widgets/pencil/pencil_button.dart';

class DrawingPage extends StatelessWidget {
  const DrawingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: MultiBlocProvider(
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
          child: Row(children: const [
            PencilButton(),
          ]),
        ),
      ),
      body: Scribble(
        notifier: getIt<ScribbleNotifier>(),
      ),
    );
  }
}

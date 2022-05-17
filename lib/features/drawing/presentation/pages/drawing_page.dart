import 'package:copypaste/core/injections/injection.dart';
import 'package:copypaste/features/drawing/domain/entities/selectable_tools.dart';
import 'package:copypaste/features/drawing/presentation/bloc/index.dart';
import 'package:copypaste/features/drawing/presentation/widgets/drawing_button_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scribble/scribble.dart';

class DrawingPage extends StatelessWidget {
  const DrawingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          DrawingButtonMenu(),
        ],
      ),
      body: BlocProvider(
        create: (context) => getIt<DrawingBloc>(),
        child: BlocConsumer<DrawingBloc, DrawingState>(
          builder: (context, state) {
            return Scribble(
              notifier: getIt<ScribbleNotifier>(),
            );
          },
          listener: (context, state) {},
        ),
      ),
    );
  }
}

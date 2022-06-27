import '../bloc/history_manager_bloc/history_manager_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../../../../core/injections/injection.dart';
import '../bloc/pen_settings_bloc/pen_settings_bloc.dart';
import '../widgets/canvas/drawing_canvas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_stackable_popup_menu/my_stackable_popup_menu.dart';

import '../bloc/drawing_bloc/drawing_bloc.dart';
import '../bloc/selectable_bloc/blocs/current_tool_bloc.dart';
import '../bloc/selectable_bloc/blocs/eraser_width_bloc.dart';
import '../bloc/selectable_bloc/blocs/pen_color_bloc.dart';
import '../bloc/selectable_bloc/blocs/pen_width_bloc.dart';
import '../widgets/toolbar/drawing_appbar_title.dart';

class DrawingPage extends StatelessWidget {
  const DrawingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: getIt<CurrentToolBloc>(),
        ),
        BlocProvider.value(
          value: getIt<DrawingBloc>(),
        ),
        BlocProvider.value(
          value: getIt<EraserWidthBloc>(),
        ),
        BlocProvider.value(
          value: getIt<PenColorBloc>(),
        ),
        BlocProvider.value(
          value: getIt<PenWidthBloc>(),
        ),
        BlocProvider.value(
          value: getIt<HistoryManagerBloc>(),
        ),
        BlocProvider.value(
          value: getIt<PenSettingsBloc>(),
        ),
      ],
      child: MyPageWrapper(
        child: PlatformScaffold(
          appBar: PlatformAppBar(
            title: const DrawingPageAppbarTitle(),
            backgroundColor: const Color(0xFFFADB00),
          ),
          body: const DrawingCanvas(),
        ),
      ),
    );
  }
}

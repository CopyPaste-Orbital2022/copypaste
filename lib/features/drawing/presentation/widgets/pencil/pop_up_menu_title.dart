import 'package:copypaste/features/drawing/presentation/bloc/index.dart';
import 'package:copypaste/features/drawing/presentation/widgets/pencil/color_selector/pencil_color_selector_title.dart';
import 'package:copypaste/features/drawing/presentation/widgets/pencil/color_selector/pencil_color_selector.dart';
import 'package:copypaste/features/drawing/presentation/widgets/pencil/pencil_popup_menu_title.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/injections/injection.dart';

class PencilPopupMenu extends StatelessWidget {
  const PencilPopupMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DrawingBloc>.value(value: getIt<DrawingBloc>()),
        BlocProvider<DrawingPencilBloc>.value(
            value: getIt<DrawingPencilBloc>()),
        BlocProvider<DrawingEraserBloc>.value(
            value: getIt<DrawingEraserBloc>()),
      ],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          PopupMenuTitleText("Pencil Settings"),
          SizedBox(height: 10),
          PencilColorSelectorTitle(),
          SizedBox(height: 10),
          PencilColorSelector(),
        ],
      ),
    );
  }
}

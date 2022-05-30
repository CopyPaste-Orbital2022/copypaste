import '../../bloc/index.dart';
import 'color_selector/pen_color_selector_title.dart';
import 'color_selector/pen_color_selector.dart';
import 'pen_popup_menu_title.dart';
import 'width_selector/pen_width_selector.dart';
import 'width_selector/pen_width_selector_slider.dart';
import 'width_selector/pen_width_selector_title.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/injections/injection.dart';

class PenPopupMenu extends StatelessWidget {
  const PenPopupMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DrawingBloc>.value(value: getIt<DrawingBloc>()),
        BlocProvider<DrawingPenBloc>.value(value: getIt<DrawingPenBloc>()),
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
          SizedBox(height: 20),
          PenWidthSelectorTitle(),
          SizedBox(height: 10),
          PenWidthSelector(),
          SizedBox(height: 10),
          PenWidthSelectorSlider(),
        ],
      ),
    );
  }
}

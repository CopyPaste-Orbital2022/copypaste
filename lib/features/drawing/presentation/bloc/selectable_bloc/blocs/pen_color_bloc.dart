import 'dart:ui';

import 'package:injectable/injectable.dart';
import 'package:selectable_items/selectable_items.dart';

import '../selectable_bloc.dart';

typedef PenColorState = SelectableState<Color>;
typedef PenColorEvent = SelectableEvent<Color>;

@LazySingleton()
class PenColorBloc extends SelectableBloc<Color> {
  PenColorBloc() : super(PenColorStateX.initial());
}

extension PenColorStateX on PenColorState {
  static PenColorState initial() {
    return const PenColorState(
      items: SelectableItems(
        currentIndex: 0,
        items: [
          Color(0xFF000000),
          Color(0xFFFF0000),
          Color(0xFF0000FF),
        ],
      ),
    );
  }
}

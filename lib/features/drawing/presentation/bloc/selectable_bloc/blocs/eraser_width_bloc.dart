import 'package:injectable/injectable.dart';
import 'package:selectable_items/selectable_items.dart';

import './width_bloc.dart';

typedef EraserWidthState = WidthState;
typedef EraserWidthEvent = WidthEvent;

@LazySingleton()
class EraserWidthBloc extends WidthBloc {
  EraserWidthBloc() : super(EraserWidthStateX.initial());
}

extension EraserWidthStateX on EraserWidthState {
  static EraserWidthState initial() {
    return const EraserWidthState(
      items: SelectableItems(
        currentIndex: 0,
        items: [10, 20, 30],
        maxItems: 3,
        minItems: 3,
      ),
    );
  }
}

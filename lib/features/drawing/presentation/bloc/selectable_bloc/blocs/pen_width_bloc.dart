import 'package:injectable/injectable.dart';
import 'package:selectable_items/selectable_items.dart';

import 'width_bloc.dart';

typedef PenWidthState = WidthState;
typedef PenWidthEvent = WidthEvent;

@LazySingleton()
class PenWidthBloc extends WidthBloc {
  PenWidthBloc() : super(PenWidthStateX.initial());
}

extension PenWidthStateX on PenWidthState {
  static PenWidthState initial() {
    return const PenWidthState(
      items: SelectableItems(
        currentIndex: 0,
        items: [5, 10, 15],
        maxItems: 3,
        minItems: 3,
        maxValue: 50,
        minValue: 0,
      ),
    );
  }
}

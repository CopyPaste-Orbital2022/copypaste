import 'package:copypaste/features/drawing/presentation/bloc/selectable_bloc/selectable_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:selectable_items/selectable_items.dart';

import '../../../enums/drawing_button.dart';

typedef CurrentToolState = SelectableState<DrawingButtonType>;
typedef CurrentToolEvent = SelectableEvent<DrawingButtonType>;

@LazySingleton()
class CurrentToolBloc extends SelectableBloc<DrawingButtonType> {
  CurrentToolBloc() : super(CurrentToolStateX.initial());
}

extension CurrentToolStateX on SelectableBloc<DrawingButtonType> {
  static CurrentToolState initial() {
    return const SelectableState(
      items: SelectableItems(
        currentIndex: 0,
        items: [
          DrawingButtonType.pen,
          DrawingButtonType.eraser,
        ],
      ),
    );
  }
}

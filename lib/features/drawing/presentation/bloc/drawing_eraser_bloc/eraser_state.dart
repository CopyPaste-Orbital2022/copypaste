import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:selectable_items/selectable_items.dart';

part 'eraser_state.freezed.dart';

@freezed
class EraserState with _$EraserState {
  const factory EraserState({
    required SelectableItems<double> eraserSizes,
  }) = _EraserState;
}

extension EraserStateX on EraserState {
  static EraserState initial() {
    // TODO: change this to reflect the prefs
    return const EraserState(
      eraserSizes: SelectableItems(
        items: [10, 20, 30],
        currentIndex: 0,
      ),
    );
  }
}

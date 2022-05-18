import 'package:copypaste/features/drawing-toolbar/domain/entities/selectable_tools.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'drawing_toolbar_event.freezed.dart';

@freezed
abstract class DrawingToolbarEvent with _$DrawingToolbarEvent {
  const factory DrawingToolbarEvent.initialEvent() = InitialEvent;
  const factory DrawingToolbarEvent.changeSelectedDrawingButtonEvent(
      DrawingTool tool) = ChangeSelectedDrawingButtonEvent;
}

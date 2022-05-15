import 'package:copypaste/features/drawing/domain/entities/selectable_tools.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'drawing_event.freezed.dart';

@freezed
abstract class DrawingEvent with _$DrawingEvent {
  const factory DrawingEvent.initialEvent() = InitialEvent;
  const factory DrawingEvent.changeSelectedDrawingButtonEvent(
      DrawingTool tool) = ChangeSelectedDrawingButtonEvent;
}

import 'package:copypaste/features/drawing/domain/entities/drawing_tool.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'drawing_event.freezed.dart';

@freezed
class DrawingEvent with _$DrawingEvent {
  const factory DrawingEvent.switchToToolEvent(DrawingTool tool) =
      _SwitchToToolEvent;
  const factory DrawingEvent.setUseStylusEvent(bool useStylus) =
      _SetUseStylusEvent;
}

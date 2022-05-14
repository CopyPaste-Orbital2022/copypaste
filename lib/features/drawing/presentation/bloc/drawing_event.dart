import 'package:freezed_annotation/freezed_annotation.dart';

part 'drawing_event.freezed.dart';

@freezed
abstract class DrawingEvent with _$DrawingEvent {
  const factory DrawingEvent.initialEvent() = InitialEvent;
}

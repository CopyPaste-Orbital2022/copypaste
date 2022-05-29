import 'package:freezed_annotation/freezed_annotation.dart';

part 'eraser_event.freezed.dart';

@freezed
class EraserEvent with _$EraserEvent {
  const factory EraserEvent.changeEraserSizeEvent() = ChangeEraserSizeEvent;
}

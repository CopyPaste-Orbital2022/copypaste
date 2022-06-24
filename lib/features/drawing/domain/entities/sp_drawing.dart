import 'package:freezed_annotation/freezed_annotation.dart';

part 'sp_drawing.freezed.dart';

@freezed
abstract class SPDrawing with _$SPDrawing {
  const factory SPDrawing({
    required String id,
    required DateTime createdAt,
    required DateTime modifiedAt,
    required String title,
  }) = _SPDrawing;
}

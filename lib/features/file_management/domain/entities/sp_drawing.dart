import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sp_drawing.freezed.dart';

@freezed
class SPDrawing with _$SPDrawing {
  const SPDrawing._();

  const factory SPDrawing({
    required int id,
    required String name,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _SPDrawing;
}

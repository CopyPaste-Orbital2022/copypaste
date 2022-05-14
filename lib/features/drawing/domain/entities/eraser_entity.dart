import 'package:freezed_annotation/freezed_annotation.dart';

part 'eraser_entity.freezed.dart';

@freezed
class EraserEntity with _$EraserEntity {
  const factory EraserEntity({
    required double radius,
    required bool isPartial,
  }) = _EraserEntity;
}

import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pen_entity.freezed.dart';

@freezed
class PenEntity with _$PenEntity {
  const factory PenEntity({
    required int currentColorIdx,
    required List<Color> colors,
    required bool useStylus,
    required double width,
  }) = _PenEntity;
}

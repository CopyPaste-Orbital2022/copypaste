import 'package:copypaste/features/drawing/domain/entities/eraser_entity.dart';
import 'package:equatable/equatable.dart';

class EraserModel extends Equatable {
  /// storage
  static const String prefix = "eraser";
  static const double defaultRadius = 5.0;
  static const bool defaultIsPartial = false;

  /// The Radius of the Eraser
  final double radius;
  final bool isPartial;

  /// Represents an eraser in the datasource
  const EraserModel({
    required this.radius,
    required this.isPartial,
  });

  /// converts to the domain layer
  EraserEntity toDomain() {
    return EraserEntity(
      radius: radius,
      isPartial: isPartial,
    );
  }

  /// converts back to from the domain layer
  static EraserModel fromDomain(EraserEntity eraserEntity) {
    return EraserModel(
      radius: eraserEntity.radius,
      isPartial: eraserEntity.isPartial,
    );
  }

  @override
  List<Object?> get props => [radius];
}

import 'package:copypaste/features/drawing/domain/entities/eraser_entity.dart';
import 'package:copypaste/features/drawing/domain/entities/pen_entity.dart';

abstract class IDrawingToolBarRepository {
  void savePenEntity(PenEntity entity);
  void saveEraserEntity(EraserEntity entity);
  PenEntity getPenEntity();
  EraserEntity getEraserEntity();
}

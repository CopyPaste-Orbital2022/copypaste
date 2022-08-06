import 'package:copypaste/core/cloud/sync_service.dart';
import 'package:copypaste/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:copypaste/features/drawing/data/models/sp_point_model.dart';
import 'package:copypaste/features/drawing/data/models/sp_stroke_model.dart';
import 'package:copypaste/features/file_management/data/models/sp_drawing_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:isar/isar.dart';
import 'package:mockito/annotations.dart';

void main() {
  // test('test saveStrokes', () async {
  //   List<SPDrawingModel> drawings = [
  //     SPDrawingModel()
  //       ..id = 1
  //       ..name = 'test 1'
  //       ..createdAt = DateTime.now()
  //       ..updatedAt = DateTime.now(),
  //     SPDrawingModel()
  //       ..id = 2
  //       ..name = 'test 2'
  //       ..createdAt = DateTime.now()
  //       ..updatedAt = DateTime.now(),
  //     SPDrawingModel()
  //       ..id = 3
  //       ..name = 'test 3'
  //       ..createdAt = DateTime.now()
  //       ..updatedAt = DateTime.now(),
  //   ];

  //   final result = await SyncService.saveDrawings(
  //       drawings, 'create_drawing', '62cf013f7a4ff2d3943d1555', 'hello123', SPCloudDrawing(Client()));
  // });
}

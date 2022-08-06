import 'dart:async';
import 'dart:convert';

import 'package:copypaste/core/cloud/sp_cloud.dart';
import 'package:copypaste/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:copypaste/features/drawing/data/models/sp_point_model.dart';
import 'package:copypaste/features/drawing/data/models/sp_stroke_model.dart';
import 'package:copypaste/features/file_management/data/models/sp_drawing_model.dart';
import 'package:copypaste/features/file_management/domain/entities/sp_drawing.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@LazySingleton()
class SPCloudDrawing extends ISPCloud {
  SPCloudDrawing();

  Uri get requestUri => getUri(['drawings']);

  Future<Response> post(Map<String, dynamic> body) async {
    return await Client().post(
      requestUri,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(body),
    );
  }

  Future<Response> put(Map<String, dynamic> body) async {
    return await Client().put(
      requestUri,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(body),
    );
  }

  Future<Response> get({Map<String, String>? json}) async {
    final Map<String, String> headers = {
      'Content-Type': 'application/json',
    };
    if (json != null) {
      headers.addAll(json);
    }
    return await Client().get(
      requestUri,
      headers: headers,
    );
  }
}

@LazySingleton()
class SyncService {
  SyncService(this.isar, this.authBloc, this.drawingInstance);
  final Isar isar;
  final AuthBloc authBloc;
  final SPCloudDrawing drawingInstance;

  Future<void> saveNewDrawings() async {
    await isar.sPDrawingModels.filter().syncedStateEqualTo(1).findAll().then((drawingModels) async {
      debugPrint('saving ${drawingModels.length} drawings');
      if (authBloc.state is UserSignedIn) {
        debugPrint('> user is signed in');
        final UserSignedIn state = authBloc.state as UserSignedIn;
        final id = state.user.uid;
        final password = state.user.password;
        const action = "create_drawing";
        await saveDrawings(drawingModels, action, id, password);
        debugPrint("Saved ${drawingModels.length} new drawings");
      } else {
        debugPrint('> user is not signed in: ${authBloc.state}');
      }
    });
  }

  Future<void> saveDrawings(List<SPDrawingModel> drawingModels, String action, String id, String password) async {
    debugPrint("Saving ${drawingModels.length} drawings");
    for (final drawing in drawingModels) {
      final drawingName = drawing.name;
      final drawingId = drawing.id;
      final requestJson = {
        'action': action.trim(),
        'user_id': id.trim(),
        'password': password.trim(),
        'drawing_name': drawingName,
        'drawing_id': drawingId,
      };
      final response = await drawingInstance.post(requestJson);
      if (response.statusCode == 200) {
        debugPrint("Saved drawing $drawingName");
        drawing.syncedState = 0;
        await isar.writeTxn(
          (isar) async => await isar.sPDrawingModels.put(drawing),
        );
      } else {
        debugPrint("Error: ${response.body}");
      }
    }
  }

  // update drawings
  Future<void> updateDrawings() async {
    await isar.sPDrawingModels.filter().syncedStateEqualTo(2).findAll().then((drawingModels) async {
      if (authBloc.state is UserSignedIn) {
        final UserSignedIn state = authBloc.state as UserSignedIn;
        final id = state.user.uid;
        final password = state.user.password;
        const action = "update_drawing_metadata";
        for (final drawing in drawingModels) {
          final drawingName = drawing.name;
          final drawingId = drawing.id;
          final requestJson = {
            'action': action,
            'user_id': id,
            'password': password,
            'drawing_name': drawingName,
            'drawing_id': drawingId,
          };
          final response = await drawingInstance.put(requestJson);
          if (response.statusCode == 200) {
            drawing.syncedState = 0;
            isar.writeTxn(
              (isar) async => await isar.sPDrawingModels.put(drawing),
            );
          } else {
            debugPrint("Error: ${response.body}");
          }
        }
        debugPrint("Updated ${drawingModels.length} drawings");
      }
    });
  }

  // add stroke to drawing
  Future<void> addStrokeToDrawing() async {
    await isar.sPStrokeModels.filter().syncedEqualTo(false).findAll().then((strokeModels) async {
      if (authBloc.state is UserSignedIn) {
        final UserSignedIn state = authBloc.state as UserSignedIn;
        final id = state.user.uid;
        final password = state.user.password;
        const action = "add_stroke";
        for (final stroke in strokeModels) {
          await stroke.drawing.load();
          await stroke.points.load();
          final drawingId = stroke.drawing.value!.id;
          final requestJson = {
            'action': action,
            'user_id': id,
            'password': password,
            'drawing_id': drawingId,
            'stroke': stroke.toJson().toJson(),
          };
          final response = await drawingInstance.post(requestJson);
          if (response.statusCode == 200) {
            debugPrint("Saved stroke ${stroke.id}");
            stroke.synced = true;
            isar.writeTxn(
              (isar) async => await isar.sPStrokeModels.put(stroke),
            );
          } else {
            debugPrint("Error: ${response.body}");
          }
        }
        debugPrint("Added ${strokeModels.length} strokes to drawings");
      }
    });
  }

  // remove stroke from drawing
  Future<void> removeStrokeFromDrawing() async {
    await isar.deletedStrokes.where().findAll().then((strokeModels) async {
      if (authBloc.state is UserSignedIn) {
        final UserSignedIn state = authBloc.state as UserSignedIn;
        final id = state.user.uid;
        final password = state.user.password;
        const action = "remove_stroke";
        for (final stroke in strokeModels) {
          final requestJson = {
            'action': action,
            'user_id': id,
            'password': password,
            'drawing_id': stroke.drawingId,
            'stroke_id': stroke.strokeId,
          };
          final response = await drawingInstance.post(requestJson);
          if (response.statusCode == 200) {
            isar.writeTxn((isar) async {
              await isar.deletedStrokes.delete(stroke.id);
            });
          } else {
            debugPrint("Error: ${response.body}");
          }
        }
        debugPrint("Removed ${strokeModels.length} strokes from drawings");
      }
    });
  }

  Future<void> loadDrawings() async {
    if (authBloc.state is UserSignedIn) {
      final requestJson = {
        'action': 'get_drawings',
        'user_id': (authBloc.state as UserSignedIn).user.uid,
        'password': (authBloc.state as UserSignedIn).user.password,
      };
      final response = await drawingInstance.get(json: requestJson);
      if (response.statusCode == 200) {
        final drawingsMap = json.decode(response.body);

        if (drawingsMap['drawings'] == null) {
          debugPrint("No drawings found");
          return;
        }

        final drawings = drawingsMap['drawings'];
        for (final drawing in drawings) {
          final int id = drawing['drawing_id']['low'] + drawing['drawing_id']['high'] * (1 << 32);

          final DateTime createdAt = DateTime.tryParse(drawing['created_date']) ?? DateTime.now();

          final String name = drawing['drawing_name'];

          final DateTime updateDate = await isar.sPDrawingModels.where().idEqualTo(id).findFirst().then((drawing) {
            if (drawing != null) {
              return drawing.updatedAt;
            } else {
              return createdAt;
            }
          });

          final SPDrawingModel drawingModel = SPDrawingModel()
            ..id = id
            ..name = name
            ..createdAt = createdAt
            ..updatedAt = updateDate
            ..syncedState = 0;
          isar.writeTxn(
            (isar) async => await isar.sPDrawingModels.put(
              drawingModel,
              replaceOnConflict: true,
              saveLinks: false,
            ),
          );
        }
        debugPrint("Loaded ${drawings.length} drawings");
      } else {
        debugPrint("Error: ${response.body}");
      }
    }
  }

  Future<void> loadStrokes() async {
    await isar.sPDrawingModels.where().findAll().then((drawingModels) async {
      if (authBloc.state is UserSignedIn) {
        final UserSignedIn state = authBloc.state as UserSignedIn;
        final id = state.user.uid;
        final password = state.user.password;
        const action = "get_strokes";
        for (final drawing in drawingModels) {
          final requestJson = {
            'action': action,
            'user_id': id,
            'password': password,
            'drawing_id': drawing.id.toString(),
          };
          final response = await drawingInstance.get(json: requestJson);
          if (response.statusCode == 200) {
            final strokeMaps = json.decode(response.body)['strokes'];
            if (strokeMaps == null) {
              continue;
            }
            final List<SPStrokeModel> strokeModels = [];
            for (final strokeMap in strokeMaps) {
              final points = strokeMap['points'];
              if (points == null) {
                debugPrint("No points found");
                continue;
              }
              final List<SPPointModel> pointModels = [];
              for (final point in points) {
                final double? dx = double.tryParse(point['dx']['\$numberDecimal']);
                final double? dy = double.tryParse(point['dy']['\$numberDecimal']);
                if (dx == null || dy == null) {
                  debugPrint("Invalid point");
                  continue;
                }
                final int index = point['index']['low'] + point['index']['high'] * (1 << 32);
                final double pressure = double.tryParse(point['pressure']['\$numberDecimal']) ?? 1.0;
                final int pointId = point['point_id']['low'] + point['point_id']['high'] * (1 << 32);
                final SPPointModel pointModel = SPPointModel()
                  ..id = pointId
                  ..dx = dx
                  ..dy = dy
                  ..pressure = pressure
                  ..index = index;
                pointModels.add(pointModel);
              }
              pointModels.sort((a, b) => a.index.compareTo(b.index));
              final int strokeId = strokeMap['stroke_id']['low'] + strokeMap['stroke_id']['high'] * (1 << 32);
              final int color = strokeMap['color']['low'] + strokeMap['color']['high'] * (1 << 32);
              final double thinning = double.tryParse(strokeMap['thinning']['\$numberDecimal'] as String) ?? 0.5;
              final double smoothing = double.tryParse(strokeMap['smoothing']['\$numberDecimal'] as String) ?? 0.5;
              final double streamline = double.tryParse(strokeMap['streamline']['\$numberDecimal'] as String) ?? 0.5;
              final double taperStart = double.tryParse(strokeMap['taper_start']['\$numberDecimal'] as String) ?? 0.5;
              final double taperEnd = double.tryParse(strokeMap['taper_end']['\$numberDecimal'] as String) ?? 0.5;
              final bool capStart = strokeMap['cap_start'] ?? true;
              final bool capEnd = strokeMap['cap_end'] ?? true;
              final double size = double.tryParse(strokeMap['size']['\$numberDecimal'] as String) ?? 0.5;
              final bool simulatePressure = strokeMap['simulate_pressure'] ?? true;
              final bool isComplete = strokeMap['is_complete'] ?? false;
              final SPStrokeModel spStrokeModel = SPStrokeModel()
                ..id = strokeId
                ..color = color
                ..thinning = thinning
                ..smoothing = smoothing
                ..streamline = streamline
                ..taperStart = taperStart
                ..taperEnd = taperEnd
                ..capStart = capStart
                ..capEnd = capEnd
                ..size = size
                ..simulatePressure = simulatePressure
                ..isComplete = isComplete
                ..points.addAll(pointModels);
              strokeModels.add(spStrokeModel);
            }
            debugPrint("Loaded ${strokeModels.length} strokes from drawings");
            for (final stroke in strokeModels) {
              isar.writeTxn((isar) async {
                // if deletedStroke does not contain the stroke, then add it
                stroke.synced = true;
                final deletedStroke = await isar.deletedStrokes.filter().strokeIdEqualTo(stroke.id).findAll();
                if (deletedStroke.isEmpty) {
                  await isar.sPStrokeModels.put(
                    stroke,
                    replaceOnConflict: true,
                    saveLinks: true,
                  );
                }
              });
            }
          } else {
            debugPrint("Error: ${response.body}");
          }
        }
      }
    });
  }

  Future<void> sync(Timer timer) async {
    debugPrint('starting sync: ${timer.tick}');
    debugPrint('loading drawings');
    await loadDrawings();
    debugPrint('loading strokes');
    await loadStrokes();
    debugPrint('saving new drawings');
    await saveNewDrawings();
    debugPrint('updating drawings');
    await updateDrawings();
    debugPrint('adding strokes to drawings');
    await addStrokeToDrawing();
    debugPrint('removing strokes from drawings');
    await removeStrokeFromDrawing();
    debugPrint('sync complete');
  }

  // async loop that runs every minute to sync with server
  void startSyncLoop() {
    Timer.periodic(const Duration(seconds: 10), (timer) async {
      await sync(timer);
    });
  }
}

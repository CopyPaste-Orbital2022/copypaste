import 'package:copypaste/features/authentication/domain/entities/sp_user.dart';
import 'package:copypaste/features/drawing/data/models/sp_point_model.dart';
import 'package:copypaste/features/drawing/data/models/sp_stroke_model.dart';
import 'package:copypaste/features/file_management/data/models/sp_drawing_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjection(String env) async {
  await $initGetIt(getIt, environment: env);
}

@module
abstract class PersistenceModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @injectable
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  @injectable
  http.Client get httpClient => http.Client();

  @preResolve
  Future<Box<dynamic>> get hiveBox async => await Hive.openBox('drawings');

  @preResolve
  Future<Isar> get isar async {
    final directory = await getApplicationSupportDirectory();
    debugPrint('directory: $directory');
    return await Isar.open(
      schemas: [
        SPDrawingModelSchema,
        SPStrokeModelSchema,
        SPPointModelSchema,
      ],
      directory: directory.path,
    );
  }
}

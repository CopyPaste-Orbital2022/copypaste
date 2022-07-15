import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjection(String env) async {
  await $initGetIt(getIt, environment: env);
}

@module
abstract class PreferencesInjectionModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}

@module
abstract class DatabaseInjectionModule {
  Future<Database> get database async {
    final db = await openDatabase('notes.db');
    await db.execute(
      'CREATE TABLE IF NOT EXISTS DRAWINGS(ID TEXT PRIMARY KEY NOT NULL, NAME TEXT NOT NULL, CREATED_AT TIMESTAMP NOT NULL, MODIFIED_AT TIMESTAMP NOT NULL, SYNCED INT NOT NULL);',
    );
    await db.execute(
      'CREATE TABLE IF NOT EXISTS POINTS(ID TEXT PRIMARY KEY NOT NULL, DID TEXT NOT NULL, SID TEXT NOT NULL, P_INDEX INT NOT NULL, POS_X DOUBLE NOT NULL, POS_Y DOUBLE NOT NULL, PRESSURE DOUBLE NOT NULL, TYPE INTEGER NOT NULL);',
    );
    await db.execute(
      'CREATE TABLE IF NOT EXISTS STROKES(ID TEXT PRIMARY KEY NOT NULL, DID TEXT NOT NULL, S_INDEX INT NOT NULL, CREATED_AT DATETIME NOT NULL, SYNCED_AT DATETIME, SIZE DOUBLE NOT NULL, COLOR INT NOT NULL, THINNING DOUBLE NOT NULL, SMOOTHING DOUBLE NOT NULL, STREAMLINE DOUBLE NOT NULL, TAPER_START DOUBLE NOT NULL, TAPER_END DOUBLE NOT NULL, CAP_START BOOLEAN NOT NULL, CAP_END BOOLEAN NOT NULL, SIMULATE_PRESSURE BOOLEAN NOT NULL);',
    );
    return db;
  }
}

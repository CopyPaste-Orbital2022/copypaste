// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i20;
import 'package:sqflite/sqflite.dart' as _i6;

import '../../features/authentication/data/datasources/sp_cloud_auth.dart'
    as _i19;
import '../../features/authentication/data/repositories/auth_repository_impl.dart'
    as _i27;
import '../../features/authentication/domain/repositories/i_auth_repository.dart'
    as _i26;
import '../../features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart'
    as _i30;
import '../../features/authentication/presentation/bloc/validation_bloc/validation_bloc.dart'
    as _i29;
import '../../features/drawing/data/repositories/sp_drawing_repository_local_impl.dart'
    as _i13;
import '../../features/drawing/domain/repository/i_sp_drawing_repository.dart'
    as _i12;
import '../../features/drawing/domain/usecases/add_stroke.dart' as _i21;
import '../../features/drawing/domain/usecases/delete_stroke.dart' as _i24;
import '../../features/drawing/domain/usecases/load_strokes_for_drawing.dart'
    as _i15;
import '../../features/drawing/presentation/bloc/drawing_bloc/drawing_bloc.dart'
    as _i25;
import '../../features/drawing/presentation/bloc/history_manager_bloc/history_manager_bloc.dart'
    as _i9;
import '../../features/drawing/presentation/bloc/pen_settings_bloc/pen_settings_bloc.dart'
    as _i17;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/current_tool_bloc.dart'
    as _i5;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/eraser_width_bloc.dart'
    as _i7;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/pen_color_bloc.dart'
    as _i16;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/pen_width_bloc.dart'
    as _i18;
import '../../features/file_management/data/repositories/file_management_repository_local_impl.dart'
    as _i11;
import '../../features/file_management/domain/repositories/i_file_management_repository.dart'
    as _i10;
import '../../features/file_management/domain/usecases/change_drawing_name.dart'
    as _i22;
import '../../features/file_management/domain/usecases/create_drawing.dart'
    as _i23;
import '../../features/file_management/domain/usecases/load_drawings_list.dart'
    as _i14;
import '../../features/file_management/domain/usecases/load_most_recent_drawing.dart'
    as _i28;
import '../../features/file_management/presentation/bloc/file_management_bloc/file_management_bloc.dart'
    as _i31;
import '../routing/app_router.dart' as _i3;
import 'injection.dart' as _i32; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final persistenceModule = _$PersistenceModule();
  final databaseInjectionModule = _$DatabaseInjectionModule();
  gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
  gh.factory<_i4.Client>(() => persistenceModule.httpClient);
  gh.lazySingleton<_i5.CurrentToolBloc>(() => _i5.CurrentToolBloc());
  await gh.factoryAsync<_i6.Database>(() => databaseInjectionModule.database,
      preResolve: true);
  gh.lazySingleton<_i7.EraserWidthBloc>(() => _i7.EraserWidthBloc());
  gh.factory<_i8.FlutterSecureStorage>(() => persistenceModule.secureStorage);
  gh.lazySingleton<_i9.HistoryManagerBloc>(() => _i9.HistoryManagerBloc());
  gh.lazySingleton<_i10.IFileManagementRepository>(() =>
      _i11.FileManagementRepositoryLocalImpl(database: get<_i6.Database>()));
  gh.lazySingleton<_i12.ISPDrawingRepository>(
      () => _i13.SPDrawingRepositoryLocalImpl(database: get<_i6.Database>()));
  gh.lazySingleton<_i14.LoadDrawingsListUsecase>(() =>
      _i14.LoadDrawingsListUsecase(get<_i10.IFileManagementRepository>()));
  gh.lazySingleton<_i15.LoadStrokesForDrawingUsecase>(() =>
      _i15.LoadStrokesForDrawingUsecase(get<_i12.ISPDrawingRepository>()));
  gh.lazySingleton<_i16.PenColorBloc>(() => _i16.PenColorBloc());
  gh.lazySingleton<_i17.PenSettingsBloc>(() => _i17.PenSettingsBloc());
  gh.lazySingleton<_i18.PenWidthBloc>(() => _i18.PenWidthBloc());
  gh.lazySingleton<_i19.SPCloudAuth>(() => _i19.SPCloudAuth(get<_i4.Client>(),
      scheme: get<String>(),
      host: get<String>(),
      port: get<int>(),
      pathSegments: get<List<String>>()));
  await gh.factoryAsync<_i20.SharedPreferences>(() => persistenceModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i21.AddStrokeUsecase>(
      () => _i21.AddStrokeUsecase(get<_i12.ISPDrawingRepository>()));
  gh.lazySingleton<_i22.ChangeDrawingNameUsecase>(() =>
      _i22.ChangeDrawingNameUsecase(get<_i10.IFileManagementRepository>()));
  gh.lazySingleton<_i23.CreateNewDrawingUsecase>(() =>
      _i23.CreateNewDrawingUsecase(get<_i10.IFileManagementRepository>()));
  gh.lazySingleton<_i24.DeleteStrokeUsecase>(
      () => _i24.DeleteStrokeUsecase(get<_i12.ISPDrawingRepository>()));
  gh.lazySingleton<_i25.DrawingBloc>(() => _i25.DrawingBloc(
      currentToolBloc: get<_i5.CurrentToolBloc>(),
      penColorBloc: get<_i16.PenColorBloc>(),
      penWidthBloc: get<_i18.PenWidthBloc>(),
      eraserWidthBloc: get<_i7.EraserWidthBloc>(),
      penSettingsBloc: get<_i17.PenSettingsBloc>(),
      loadStrokesForDrawingUsecase: get<_i15.LoadStrokesForDrawingUsecase>(),
      addStrokeUsecase: get<_i21.AddStrokeUsecase>(),
      deleteStrokeUsecase: get<_i24.DeleteStrokeUsecase>()));
  gh.lazySingleton<_i26.IAuthRepository>(() => _i27.AuthRepositoryImpl(
      get<_i19.SPCloudAuth>(), get<_i8.FlutterSecureStorage>()));
  gh.lazySingleton<_i28.LoadMostRecentDrawingUsecase>(() =>
      _i28.LoadMostRecentDrawingUsecase(get<_i10.IFileManagementRepository>(),
          get<_i23.CreateNewDrawingUsecase>()));
  gh.factory<_i29.ValidationBloc>(
      () => _i29.ValidationBloc(get<_i26.IAuthRepository>()));
  gh.factory<_i30.AuthBloc>(() => _i30.AuthBloc(get<_i26.IAuthRepository>()));
  gh.lazySingleton<_i31.FileManagementBloc>(() => _i31.FileManagementBloc(
      get<_i22.ChangeDrawingNameUsecase>(),
      get<_i23.CreateNewDrawingUsecase>(),
      get<_i14.LoadDrawingsListUsecase>(),
      get<_i28.LoadMostRecentDrawingUsecase>(),
      get<_i3.AppRouter>()));
  return get;
}

class _$PersistenceModule extends _i32.PersistenceModule {}

class _$DatabaseInjectionModule extends _i32.DatabaseInjectionModule {}

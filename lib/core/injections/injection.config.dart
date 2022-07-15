// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i19;
import 'package:sqflite/sqflite.dart' as _i5;

import '../../features/authentication/data/repositories/firebase_auth_repository_impl.dart'
    as _i9;
import '../../features/authentication/domain/repositories/i_auth_repository.dart'
    as _i8;
import '../../features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart'
    as _i22;
import '../../features/authentication/presentation/bloc/validation_bloc/validation_bloc.dart'
    as _i20;
import '../../features/drawing/data/repositories/sp_drawing_repository_local_impl.dart'
    as _i13;
import '../../features/drawing/domain/repository/i_sp_drawing_repository.dart'
    as _i12;
import '../../features/drawing/domain/usecases/add_stroke.dart' as _i21;
import '../../features/drawing/domain/usecases/delete_stroke.dart' as _i25;
import '../../features/drawing/domain/usecases/load_strokes_for_drawing.dart'
    as _i15;
import '../../features/drawing/presentation/bloc/drawing_bloc/drawing_bloc.dart'
    as _i26;
import '../../features/drawing/presentation/bloc/history_manager_bloc/history_manager_bloc.dart'
    as _i7;
import '../../features/drawing/presentation/bloc/pen_settings_bloc/pen_settings_bloc.dart'
    as _i17;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/current_tool_bloc.dart'
    as _i4;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/eraser_width_bloc.dart'
    as _i6;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/pen_color_bloc.dart'
    as _i16;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/pen_width_bloc.dart'
    as _i18;
import '../../features/file_management/data/repositories/file_management_repository_local_impl.dart'
    as _i11;
import '../../features/file_management/domain/repositories/i_file_management_repository.dart'
    as _i10;
import '../../features/file_management/domain/usecases/change_drawing_name.dart'
    as _i23;
import '../../features/file_management/domain/usecases/create_drawing.dart'
    as _i24;
import '../../features/file_management/domain/usecases/load_drawings_list.dart'
    as _i14;
import '../../features/file_management/domain/usecases/load_most_recent_drawing.dart'
    as _i27;
import '../../features/file_management/presentation/bloc/file_management_bloc/file_management_bloc.dart'
    as _i28;
import '../routing/app_router.dart' as _i3;
import 'injection.dart' as _i29; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final databaseInjectionModule = _$DatabaseInjectionModule();
  final preferencesInjectionModule = _$PreferencesInjectionModule();
  gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
  gh.lazySingleton<_i4.CurrentToolBloc>(() => _i4.CurrentToolBloc());
  gh.factoryAsync<_i5.Database>(() => databaseInjectionModule.database);
  gh.lazySingleton<_i6.EraserWidthBloc>(() => _i6.EraserWidthBloc());
  gh.lazySingleton<_i7.HistoryManagerBloc>(() => _i7.HistoryManagerBloc());
  gh.lazySingleton<_i8.IAuthRepository>(() => _i9.AuthRepositoryImpl());
  gh.lazySingletonAsync<_i10.IFileManagementRepository>(() async =>
      _i11.FileManagementRepositoryLocalImpl(
          database: await get.getAsync<_i5.Database>()));
  gh.lazySingletonAsync<_i12.ISPDrawingRepository>(() async =>
      _i13.SPDrawingRepositoryLocalImpl(
          database: await get.getAsync<_i5.Database>()));
  gh.lazySingletonAsync<_i14.LoadDrawingsListUsecase>(() async =>
      _i14.LoadDrawingsListUsecase(
          await get.getAsync<_i10.IFileManagementRepository>()));
  gh.lazySingletonAsync<_i15.LoadStrokesForDrawingUsecase>(() async =>
      _i15.LoadStrokesForDrawingUsecase(
          await get.getAsync<_i12.ISPDrawingRepository>()));
  gh.lazySingleton<_i16.PenColorBloc>(() => _i16.PenColorBloc());
  gh.lazySingleton<_i17.PenSettingsBloc>(() => _i17.PenSettingsBloc());
  gh.lazySingleton<_i18.PenWidthBloc>(() => _i18.PenWidthBloc());
  await gh.factoryAsync<_i19.SharedPreferences>(
      () => preferencesInjectionModule.prefs,
      preResolve: true);
  gh.factory<_i20.ValidationBloc>(
      () => _i20.ValidationBloc(get<_i8.IAuthRepository>()));
  gh.lazySingletonAsync<_i21.AddStrokeUsecase>(() async =>
      _i21.AddStrokeUsecase(await get.getAsync<_i12.ISPDrawingRepository>()));
  gh.factory<_i22.AuthBloc>(() => _i22.AuthBloc(get<_i8.IAuthRepository>()));
  gh.lazySingletonAsync<_i23.ChangeDrawingNameUsecase>(() async =>
      _i23.ChangeDrawingNameUsecase(
          await get.getAsync<_i10.IFileManagementRepository>()));
  gh.lazySingletonAsync<_i24.CreateNewDrawingUsecase>(() async =>
      _i24.CreateNewDrawingUsecase(
          await get.getAsync<_i10.IFileManagementRepository>()));
  gh.lazySingletonAsync<_i25.DeleteStrokeUsecase>(() async =>
      _i25.DeleteStrokeUsecase(
          await get.getAsync<_i12.ISPDrawingRepository>()));
  gh.lazySingletonAsync<_i26.DrawingBloc>(() async => _i26.DrawingBloc(
      currentToolBloc: get<_i4.CurrentToolBloc>(),
      penColorBloc: get<_i16.PenColorBloc>(),
      penWidthBloc: get<_i18.PenWidthBloc>(),
      eraserWidthBloc: get<_i6.EraserWidthBloc>(),
      penSettingsBloc: get<_i17.PenSettingsBloc>(),
      loadStrokesForDrawingUsecase:
          await get.getAsync<_i15.LoadStrokesForDrawingUsecase>(),
      addStrokeUsecase: await get.getAsync<_i21.AddStrokeUsecase>(),
      deleteStrokeUsecase: await get.getAsync<_i25.DeleteStrokeUsecase>()));
  gh.lazySingletonAsync<_i27.LoadMostRecentDrawingUsecase>(() async =>
      _i27.LoadMostRecentDrawingUsecase(
          await get.getAsync<_i10.IFileManagementRepository>(),
          await get.getAsync<_i24.CreateNewDrawingUsecase>()));
  gh.lazySingletonAsync<_i28.FileManagementBloc>(() async =>
      _i28.FileManagementBloc(
          await get.getAsync<_i23.ChangeDrawingNameUsecase>(),
          await get.getAsync<_i24.CreateNewDrawingUsecase>(),
          await get.getAsync<_i14.LoadDrawingsListUsecase>(),
          await get.getAsync<_i27.LoadMostRecentDrawingUsecase>(),
          get<_i3.AppRouter>()));
  return get;
}

class _$DatabaseInjectionModule extends _i29.DatabaseInjectionModule {}

class _$PreferencesInjectionModule extends _i29.PreferencesInjectionModule {}

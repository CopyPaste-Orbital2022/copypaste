// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i4;
import 'package:http/http.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i11;
import 'package:shared_preferences/shared_preferences.dart' as _i15;

import '../../features/authentication/data/datasources/sp_cloud_auth.dart'
    as _i10;
import '../../features/authentication/data/repositories/auth_repository_impl.dart'
    as _i17;
import '../../features/authentication/domain/repositories/i_auth_repository.dart'
    as _i16;
import '../../features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart'
    as _i25;
import '../../features/authentication/presentation/bloc/validation_bloc/validation_bloc.dart'
    as _i23;
import '../../features/drawing/data/repositories/sp_drawing_repository_local_impl.dart'
    as _i21;
import '../../features/drawing/domain/repository/i_sp_drawing_repository.dart'
    as _i20;
import '../../features/drawing/domain/usecases/add_stroke.dart' as _i24;
import '../../features/drawing/domain/usecases/delete_stroke.dart' as _i28;
import '../../features/drawing/domain/usecases/open_drawing.dart' as _i22;
import '../../features/drawing/presentation/bloc/drawing_bloc/drawing_bloc.dart'
    as _i29;
import '../../features/drawing/presentation/bloc/history_manager_bloc/history_manager_bloc.dart'
    as _i9;
import '../../features/drawing/presentation/bloc/pen_settings_bloc/pen_settings_bloc.dart'
    as _i13;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/current_tool_bloc.dart'
    as _i6;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/eraser_width_bloc.dart'
    as _i7;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/pen_color_bloc.dart'
    as _i12;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/pen_width_bloc.dart'
    as _i14;
import '../../features/file_management/data/repositories/file_management_repository_local_impl.dart'
    as _i19;
import '../../features/file_management/domain/repositories/i_file_management_repository.dart'
    as _i18;
import '../../features/file_management/domain/usecases/change_drawing_name.dart'
    as _i26;
import '../../features/file_management/domain/usecases/create_drawing.dart'
    as _i27;
import '../../features/file_management/presentation/bloc/file_management_bloc/file_management_bloc.dart'
    as _i30;
import '../routing/app_router.dart' as _i3;
import 'injection.dart' as _i31; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final persistenceModule = _$PersistenceModule();
  gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
  await gh.factoryAsync<_i4.Box<dynamic>>(() => persistenceModule.hiveBox,
      preResolve: true);
  gh.factory<_i5.Client>(() => persistenceModule.httpClient);
  gh.lazySingleton<_i6.CurrentToolBloc>(() => _i6.CurrentToolBloc());
  gh.lazySingleton<_i7.EraserWidthBloc>(() => _i7.EraserWidthBloc());
  gh.factory<_i8.FlutterSecureStorage>(() => persistenceModule.secureStorage);
  gh.lazySingleton<_i9.HistoryManagerBloc>(() => _i9.HistoryManagerBloc());
  gh.lazySingleton<_i10.ISPCloudAuth>(
      () => _i10.SPCloudAuthImpl(get<_i5.Client>()));
  await gh.factoryAsync<_i11.Isar>(() => persistenceModule.isar,
      preResolve: true);
  gh.lazySingleton<_i12.PenColorBloc>(() => _i12.PenColorBloc());
  gh.lazySingleton<_i13.PenSettingsBloc>(() => _i13.PenSettingsBloc());
  gh.lazySingleton<_i14.PenWidthBloc>(() => _i14.PenWidthBloc());
  await gh.factoryAsync<_i15.SharedPreferences>(() => persistenceModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i16.IAuthRepository>(() => _i17.AuthRepositoryImpl(
      get<_i10.ISPCloudAuth>(), get<_i8.FlutterSecureStorage>()));
  gh.lazySingleton<_i18.IFileManagementRepository>(
      () => _i19.FileManagementRepositoryLocalImpl(get<_i11.Isar>()));
  gh.lazySingleton<_i20.ISPDrawingRepository>(
      () => _i21.SPDrawingRepositoryLocalImpl(get<_i11.Isar>()));
  gh.lazySingleton<_i22.OpenDrawingUsecase>(
      () => _i22.OpenDrawingUsecase(get<_i20.ISPDrawingRepository>()));
  gh.factory<_i23.ValidationBloc>(
      () => _i23.ValidationBloc(get<_i16.IAuthRepository>()));
  gh.lazySingleton<_i24.AddStrokeUsecase>(
      () => _i24.AddStrokeUsecase(get<_i20.ISPDrawingRepository>()));
  gh.factory<_i25.AuthBloc>(() => _i25.AuthBloc(get<_i16.IAuthRepository>()));
  gh.lazySingleton<_i26.ChangeDrawingNameUsecase>(() =>
      _i26.ChangeDrawingNameUsecase(get<_i18.IFileManagementRepository>()));
  gh.lazySingleton<_i27.CreateNewDrawingUsecase>(() =>
      _i27.CreateNewDrawingUsecase(get<_i18.IFileManagementRepository>()));
  gh.lazySingleton<_i28.DeleteStrokeUsecase>(
      () => _i28.DeleteStrokeUsecase(get<_i20.ISPDrawingRepository>()));
  gh.lazySingleton<_i29.DrawingBloc>(() => _i29.DrawingBloc(
      currentToolBloc: get<_i6.CurrentToolBloc>(),
      penColorBloc: get<_i12.PenColorBloc>(),
      penWidthBloc: get<_i14.PenWidthBloc>(),
      eraserWidthBloc: get<_i7.EraserWidthBloc>(),
      penSettingsBloc: get<_i13.PenSettingsBloc>(),
      addStrokeUsecase: get<_i24.AddStrokeUsecase>(),
      deleteStrokeUsecase: get<_i28.DeleteStrokeUsecase>(),
      openDrawingUsecase: get<_i22.OpenDrawingUsecase>(),
      drawingRepository: get<_i20.ISPDrawingRepository>()));
  gh.lazySingleton<_i30.FileManagementBloc>(() => _i30.FileManagementBloc(
      get<_i26.ChangeDrawingNameUsecase>(),
      get<_i27.CreateNewDrawingUsecase>(),
      get<_i3.AppRouter>()));
  return get;
}

class _$PersistenceModule extends _i31.PersistenceModule {}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i16;

import '../../features/authentication/data/repositories/firebase_auth_repository_impl.dart'
    as _i10;
import '../../features/authentication/domain/repositories/i_auth_repository.dart'
    as _i9;
import '../../features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart'
    as _i18;
import '../../features/authentication/presentation/bloc/validation_bloc/validation_bloc.dart'
    as _i17;
import '../../features/drawing/data/repositories/sp_drawing_repository_impl.dart'
    as _i12;
import '../../features/drawing/domain/repository/i_sp_drawing_repository.dart'
    as _i11;
import '../../features/drawing/presentation/bloc/drawing_bloc/drawing_bloc.dart'
    as _i19;
import '../../features/drawing/presentation/bloc/history_manager_bloc/history_manager_bloc.dart'
    as _i8;
import '../../features/drawing/presentation/bloc/pen_settings_bloc/pen_settings_bloc.dart'
    as _i14;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/current_tool_bloc.dart'
    as _i4;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/eraser_width_bloc.dart'
    as _i5;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/pen_color_bloc.dart'
    as _i13;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/pen_width_bloc.dart'
    as _i15;
import '../../features/file_management/data/repositories/firebase_file_management_repository_impl.dart'
    as _i21;
import '../../features/file_management/domain/repositories/i_file_management_repository.dart'
    as _i20;
import '../../features/file_management/domain/usecases/change_drawing_name.dart'
    as _i23;
import '../../features/file_management/domain/usecases/create_drawing.dart'
    as _i24;
import '../../features/file_management/domain/usecases/load_drawings_list.dart'
    as _i22;
import '../../features/file_management/domain/usecases/load_most_recent_drawing.dart'
    as _i25;
import '../../features/file_management/presentation/bloc/file_management_bloc/file_management_bloc.dart'
    as _i26;
import '../routing/app_router.dart' as _i3;
import 'injection.dart' as _i27; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final preferencesInjectionModule = _$PreferencesInjectionModule();
  gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
  gh.lazySingleton<_i4.CurrentToolBloc>(() => _i4.CurrentToolBloc());
  gh.lazySingleton<_i5.EraserWidthBloc>(() => _i5.EraserWidthBloc());
  gh.lazySingleton<_i6.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i7.FirebaseFirestore>(
      () => firebaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i8.HistoryManagerBloc>(() => _i8.HistoryManagerBloc());
  gh.lazySingleton<_i9.IAuthRepository>(
      () => _i10.FirebaseAuthRepositoryImpl(get<_i6.FirebaseAuth>()));
  gh.lazySingleton<_i11.ISPDrawingRepository>(
      () => _i12.SPDrawingRepositoryImpl());
  gh.lazySingleton<_i13.PenColorBloc>(() => _i13.PenColorBloc());
  gh.lazySingleton<_i14.PenSettingsBloc>(() => _i14.PenSettingsBloc());
  gh.lazySingleton<_i15.PenWidthBloc>(() => _i15.PenWidthBloc());
  await gh.factoryAsync<_i16.SharedPreferences>(
      () => preferencesInjectionModule.prefs,
      preResolve: true);
  gh.factory<_i17.ValidationBloc>(
      () => _i17.ValidationBloc(get<_i9.IAuthRepository>()));
  gh.factory<_i18.AuthBloc>(() => _i18.AuthBloc(get<_i9.IAuthRepository>()));
  gh.lazySingleton<_i19.DrawingBloc>(() => _i19.DrawingBloc(
      currentToolBloc: get<_i4.CurrentToolBloc>(),
      penColorBloc: get<_i13.PenColorBloc>(),
      penWidthBloc: get<_i15.PenWidthBloc>(),
      eraserWidthBloc: get<_i5.EraserWidthBloc>(),
      penSettingsBloc: get<_i14.PenSettingsBloc>(),
      drawingRepository: get<_i11.ISPDrawingRepository>()));
  gh.lazySingleton<_i20.IFileManagementRepository>(() =>
      _i21.FirebaseFileManagementRepositoryImpl(
          get<_i7.FirebaseFirestore>(), get<_i18.AuthBloc>()));
  gh.lazySingleton<_i22.LoadDrawingsListUsecase>(() =>
      _i22.LoadDrawingsListUsecase(get<_i20.IFileManagementRepository>()));
  gh.lazySingleton<_i23.ChangeDrawingNameUsecase>(() =>
      _i23.ChangeDrawingNameUsecase(get<_i20.IFileManagementRepository>()));
  gh.lazySingleton<_i24.CreateNewDrawingUsecase>(() =>
      _i24.CreateNewDrawingUsecase(get<_i20.IFileManagementRepository>()));
  gh.lazySingleton<_i25.LoadMostRecentDrawingUsecase>(() =>
      _i25.LoadMostRecentDrawingUsecase(get<_i20.IFileManagementRepository>(),
          get<_i24.CreateNewDrawingUsecase>()));
  gh.lazySingleton<_i26.FileManagementBloc>(() => _i26.FileManagementBloc(
      get<_i23.ChangeDrawingNameUsecase>(),
      get<_i24.CreateNewDrawingUsecase>(),
      get<_i22.LoadDrawingsListUsecase>(),
      get<_i25.LoadMostRecentDrawingUsecase>()));
  return get;
}

class _$FirebaseInjectableModule extends _i27.FirebaseInjectableModule {}

class _$PreferencesInjectionModule extends _i27.PreferencesInjectionModule {}

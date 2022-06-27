// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i14;

import '../../features/authentication/data/repositories/firebase_auth_repository_impl.dart'
    as _i10;
import '../../features/authentication/domain/repositories/i_auth_repository.dart'
    as _i9;
import '../../features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart'
    as _i16;
import '../../features/authentication/presentation/bloc/validation_bloc/validation_bloc.dart'
    as _i15;
import '../../features/drawing/data/repositories/sp_drawing_repository_impl.dart'
    as _i25;
import '../../features/drawing/domain/repository/i_sp_drawing_repository.dart'
    as _i24;
import '../../features/drawing/domain/usecases/add_stroke.dart' as _i27;
import '../../features/drawing/domain/usecases/delete_stroke.dart' as _i28;
import '../../features/drawing/domain/usecases/load_strokes_for_drawing.dart'
    as _i26;
import '../../features/drawing/presentation/bloc/drawing_bloc/drawing_bloc.dart'
    as _i29;
import '../../features/drawing/presentation/bloc/history_manager_bloc/history_manager_bloc.dart'
    as _i8;
import '../../features/drawing/presentation/bloc/pen_settings_bloc/pen_settings_bloc.dart'
    as _i12;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/current_tool_bloc.dart'
    as _i4;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/eraser_width_bloc.dart'
    as _i5;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/pen_color_bloc.dart'
    as _i11;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/pen_width_bloc.dart'
    as _i13;
import '../../features/file_management/data/repositories/firebase_file_management_repository_impl.dart'
    as _i18;
import '../../features/file_management/domain/repositories/i_file_management_repository.dart'
    as _i17;
import '../../features/file_management/domain/usecases/change_drawing_name.dart'
    as _i20;
import '../../features/file_management/domain/usecases/create_drawing.dart'
    as _i21;
import '../../features/file_management/domain/usecases/load_drawings_list.dart'
    as _i19;
import '../../features/file_management/domain/usecases/load_most_recent_drawing.dart'
    as _i22;
import '../../features/file_management/presentation/bloc/file_management_bloc/file_management_bloc.dart'
    as _i23;
import '../routing/app_router.dart' as _i3;
import 'injection.dart' as _i30; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i11.PenColorBloc>(() => _i11.PenColorBloc());
  gh.lazySingleton<_i12.PenSettingsBloc>(() => _i12.PenSettingsBloc());
  gh.lazySingleton<_i13.PenWidthBloc>(() => _i13.PenWidthBloc());
  await gh.factoryAsync<_i14.SharedPreferences>(
      () => preferencesInjectionModule.prefs,
      preResolve: true);
  gh.factory<_i15.ValidationBloc>(
      () => _i15.ValidationBloc(get<_i9.IAuthRepository>()));
  gh.factory<_i16.AuthBloc>(() => _i16.AuthBloc(get<_i9.IAuthRepository>()));
  gh.lazySingleton<_i17.IFileManagementRepository>(() =>
      _i18.FirebaseFileManagementRepositoryImpl(
          get<_i7.FirebaseFirestore>(), get<_i16.AuthBloc>()));
  gh.lazySingleton<_i19.LoadDrawingsListUsecase>(() =>
      _i19.LoadDrawingsListUsecase(get<_i17.IFileManagementRepository>()));
  gh.lazySingleton<_i20.ChangeDrawingNameUsecase>(() =>
      _i20.ChangeDrawingNameUsecase(get<_i17.IFileManagementRepository>()));
  gh.lazySingleton<_i21.CreateNewDrawingUsecase>(() =>
      _i21.CreateNewDrawingUsecase(get<_i17.IFileManagementRepository>()));
  gh.lazySingleton<_i22.LoadMostRecentDrawingUsecase>(() =>
      _i22.LoadMostRecentDrawingUsecase(get<_i17.IFileManagementRepository>(),
          get<_i21.CreateNewDrawingUsecase>()));
  gh.lazySingleton<_i23.FileManagementBloc>(() => _i23.FileManagementBloc(
      get<_i20.ChangeDrawingNameUsecase>(),
      get<_i21.CreateNewDrawingUsecase>(),
      get<_i19.LoadDrawingsListUsecase>(),
      get<_i22.LoadMostRecentDrawingUsecase>(),
      get<_i3.AppRouter>()));
  gh.lazySingleton<_i24.ISPDrawingRepository>(() =>
      _i25.SPDrawingRepositoryImpl(get<_i7.FirebaseFirestore>(),
          get<_i16.AuthBloc>(), get<_i23.FileManagementBloc>()));
  gh.lazySingleton<_i26.LoadStrokesForDrawingUsecase>(() =>
      _i26.LoadStrokesForDrawingUsecase(get<_i24.ISPDrawingRepository>()));
  gh.lazySingleton<_i27.AddStrokeUsecase>(
      () => _i27.AddStrokeUsecase(get<_i24.ISPDrawingRepository>()));
  gh.lazySingleton<_i28.DeleteStrokeUsecase>(
      () => _i28.DeleteStrokeUsecase(get<_i24.ISPDrawingRepository>()));
  gh.lazySingleton<_i29.DrawingBloc>(() => _i29.DrawingBloc(
      currentToolBloc: get<_i4.CurrentToolBloc>(),
      penColorBloc: get<_i11.PenColorBloc>(),
      penWidthBloc: get<_i13.PenWidthBloc>(),
      eraserWidthBloc: get<_i5.EraserWidthBloc>(),
      penSettingsBloc: get<_i12.PenSettingsBloc>(),
      loadStrokesForDrawingUsecase: get<_i26.LoadStrokesForDrawingUsecase>(),
      addStrokeUsecase: get<_i27.AddStrokeUsecase>(),
      deleteStrokeUsecase: get<_i28.DeleteStrokeUsecase>()));
  return get;
}

class _$FirebaseInjectableModule extends _i30.FirebaseInjectableModule {}

class _$PreferencesInjectionModule extends _i30.PreferencesInjectionModule {}

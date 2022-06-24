// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i12;

import '../../features/drawing/data/repositories/sp_drawing_repository_impl.dart'
    as _i8;
import '../../features/drawing/domain/repository/i_sp_drawing_repository.dart'
    as _i7;
import '../../features/drawing/presentation/bloc/drawing_bloc/drawing_bloc.dart'
    as _i13;
import '../../features/drawing/presentation/bloc/history_manager_bloc/history_manager_bloc.dart'
    as _i6;
import '../../features/drawing/presentation/bloc/pen_settings_bloc/pen_settings_bloc.dart'
    as _i10;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/current_tool_bloc.dart'
    as _i3;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/eraser_width_bloc.dart'
    as _i4;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/pen_color_bloc.dart'
    as _i9;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/pen_width_bloc.dart'
    as _i11;
import 'cloud_firestore_injection.dart' as _i14;
import 'shared_preferences.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final cloudFirestoreInjectionModule = _$CloudFirestoreInjectionModule();
  final preferencesInjectionModule = _$PreferencesInjectionModule();
  gh.lazySingleton<_i3.CurrentToolBloc>(() => _i3.CurrentToolBloc());
  gh.lazySingleton<_i4.EraserWidthBloc>(() => _i4.EraserWidthBloc());
  gh.factory<_i5.FirebaseFirestore>(
      () => cloudFirestoreInjectionModule.firestore);
  gh.lazySingleton<_i6.HistoryManagerBloc>(() => _i6.HistoryManagerBloc());
  gh.lazySingleton<_i7.ISPDrawingRepository>(
      () => _i8.SPDrawingRepositoryImpl(get<_i5.FirebaseFirestore>()));
  gh.lazySingleton<_i9.PenColorBloc>(() => _i9.PenColorBloc());
  gh.lazySingleton<_i10.PenSettingsBloc>(() => _i10.PenSettingsBloc());
  gh.lazySingleton<_i11.PenWidthBloc>(() => _i11.PenWidthBloc());
  await gh.factoryAsync<_i12.SharedPreferences>(
      () => preferencesInjectionModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i13.DrawingBloc>(() => _i13.DrawingBloc(
      currentToolBloc: get<_i3.CurrentToolBloc>(),
      penColorBloc: get<_i9.PenColorBloc>(),
      penWidthBloc: get<_i11.PenWidthBloc>(),
      eraserWidthBloc: get<_i4.EraserWidthBloc>(),
      penSettingsBloc: get<_i10.PenSettingsBloc>()));
  return get;
}

class _$CloudFirestoreInjectionModule
    extends _i14.CloudFirestoreInjectionModule {}

class _$PreferencesInjectionModule extends _i15.PreferencesInjectionModule {}

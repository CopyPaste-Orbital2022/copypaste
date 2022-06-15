// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import '../../features/drawing/presentation/bloc/drawing_bloc/drawing_bloc.dart'
    as _i8;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/current_tool_bloc.dart'
    as _i3;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/eraser_width_bloc.dart'
    as _i4;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/pen_color_bloc.dart'
    as _i5;
import '../../features/drawing/presentation/bloc/selectable_bloc/blocs/pen_width_bloc.dart'
    as _i6;
import 'shared_preferences.dart' as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final preferencesInjectionModule = _$PreferencesInjectionModule();
  gh.lazySingleton<_i3.CurrentToolBloc>(() => _i3.CurrentToolBloc());
  gh.lazySingleton<_i4.EraserWidthBloc>(() => _i4.EraserWidthBloc());
  gh.lazySingleton<_i5.PenColorBloc>(() => _i5.PenColorBloc());
  gh.lazySingleton<_i6.PenWidthBloc>(() => _i6.PenWidthBloc());
  await gh.factoryAsync<_i7.SharedPreferences>(
      () => preferencesInjectionModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i8.DrawingBloc>(() => _i8.DrawingBloc(
      currentToolBloc: get<_i3.CurrentToolBloc>(),
      penColorBloc: get<_i5.PenColorBloc>(),
      penWidthBloc: get<_i6.PenWidthBloc>(),
      eraserWidthBloc: get<_i4.EraserWidthBloc>()));
  return get;
}

class _$PreferencesInjectionModule extends _i9.PreferencesInjectionModule {}

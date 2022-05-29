// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:scribble/scribble.dart' as _i4;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../../features/drawing/presentation/bloc/drawing_bloc/drawing_bloc.dart'
    as _i6;
import '../../features/drawing/presentation/bloc/drawing_eraser_bloc/drawing_eraser_bloc.dart'
    as _i3;
import '../../features/drawing/presentation/bloc/drawing_pencil_bloc/drawing_pencil_bloc.dart'
    as _i7;
import 'scribble.dart' as _i8;
import 'shared_preferences.dart' as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final scribbleInjectionModule = _$ScribbleInjectionModule();
  final preferencesInjectionModule = _$PreferencesInjectionModule();
  gh.lazySingleton<_i3.DrawingEraserBloc>(() => _i3.DrawingEraserBloc());
  gh.lazySingleton<_i4.ScribbleNotifier>(
      () => scribbleInjectionModule.notifier);
  await gh.factoryAsync<_i5.SharedPreferences>(
      () => preferencesInjectionModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i6.DrawingBloc>(
      () => _i6.DrawingBloc(get<_i4.ScribbleNotifier>()));
  gh.lazySingleton<_i7.DrawingPencilBloc>(
      () => _i7.DrawingPencilBloc(get<_i4.ScribbleNotifier>()));
  return get;
}

class _$ScribbleInjectionModule extends _i8.ScribbleInjectionModule {}

class _$PreferencesInjectionModule extends _i9.PreferencesInjectionModule {}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../../features/drawing-toolbar/data/repositories/drawing_toolbar_repository_impl.dart'
    as _i5;
import '../../features/drawing-toolbar/domain/repositories/i_drawing_toolbar_repository.dart'
    as _i4;
import '../../features/drawing-toolbar/presentation/bloc/drawing_bloc.dart'
    as _i6;
import 'shared_preferences.dart' as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final preferencesInjectionModule = _$PreferencesInjectionModule();
  await gh.factoryAsync<_i3.SharedPreferences>(
      () => preferencesInjectionModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i4.IDrawingToolBarRepository>(() =>
      _i5.DrawingToolbarRepositoryImpl(prefs: get<_i3.SharedPreferences>()));
  gh.lazySingleton<_i6.DrawingBloc>(
      () => _i6.DrawingBloc(get<_i4.IDrawingToolBarRepository>()));
  return get;
}

class _$PreferencesInjectionModule extends _i7.PreferencesInjectionModule {}

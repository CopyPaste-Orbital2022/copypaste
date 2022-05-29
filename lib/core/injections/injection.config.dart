// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:scribble/scribble.dart' as _i4;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../../features/drawing/presentation/bloc/drawing/drawing_bloc.dart'
    as _i3;
import 'scribble.dart' as _i6;
import 'shared_preferences.dart' as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final scribbleInjectionModule = _$ScribbleInjectionModule();
  final preferencesInjectionModule = _$PreferencesInjectionModule();
  gh.lazySingleton<_i3.DrawingBloc>(() => _i3.DrawingBloc());
  gh.lazySingleton<_i4.ScribbleNotifier>(
      () => scribbleInjectionModule.notifier);
  await gh.factoryAsync<_i5.SharedPreferences>(
      () => preferencesInjectionModule.prefs,
      preResolve: true);
  return get;
}

class _$ScribbleInjectionModule extends _i6.ScribbleInjectionModule {}

class _$PreferencesInjectionModule extends _i7.PreferencesInjectionModule {}

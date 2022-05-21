import 'package:injectable/injectable.dart';
import 'package:scribble/scribble.dart';

@module
abstract class ScribbleInjectionModule {
  @preResolve
  ScribbleNotifier get notifier => ScribbleNotifier();
}

import 'package:injectable/injectable.dart';
import 'package:scribble/scribble.dart';

@module
abstract class ScribbleInjectionModule {
  @lazySingleton
  ScribbleNotifier get notifier => ScribbleNotifier();
}

import '../selectable_bloc.dart';

typedef WidthState = SelectableState<double>;
typedef WidthEvent = SelectableEvent<double>;

abstract class WidthBloc extends SelectableBloc<double> {
  WidthBloc(WidthState initialState) : super(initialState);
}

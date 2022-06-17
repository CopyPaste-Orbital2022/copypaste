import 'package:copypaste/features/drawing/presentation/bloc/selectable_bloc/selectable_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WidthMenu<T extends SelectableBloc<double>> extends StatelessWidget {
  const WidthMenu({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<T, SelectableState<double>>(
      builder: (context, state) {
        return Column(
          children: [
            const SizedBox(height: 8),
            Text("Width: ${state.get(index)!.toStringAsFixed(1)}"),
            Slider(
              min: state.items.minValue!,
              max: state.items.maxValue!,
              value: state.selected!,
              onChanged: (newValue) {
                context.read<T>().add(
                      SelectableEvent<double>.modifyAt(index, newValue),
                    );
              },
            ),
          ],
        );
      },
    );
  }
}

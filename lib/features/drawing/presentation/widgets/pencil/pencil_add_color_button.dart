import 'package:copypaste/features/drawing/presentation/bloc/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class PencilAddColorButton extends StatelessWidget {
  const PencilAddColorButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawingPenBloc, DrawingPenState>(
      builder: (context, state) {
        return InkWell(
          child: Icon(PlatformIcons(context).add),
          onTap: () {
            print("Hello World");
            context
                .read<DrawingPenBloc>()
                .add(const PenDuplicateCurrentColorEvent());
          },
        );
      },
      listener: (context, state) {},
    );
  }
}

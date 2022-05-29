import 'package:copypaste/features/drawing/presentation/bloc/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:nil/nil.dart';

class PencilColorSelectorAddColorButton extends StatelessWidget {
  const PencilColorSelectorAddColorButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawingPencilBloc, DrawingPencilState>(
      builder: (context, state) {
        if (state.colors.items.length >= 15) return nil;
        return InkWell(
          child: Icon(PlatformIcons(context).add),
          onTap: () {
            context
                .read<DrawingPencilBloc>()
                .add(const PencilDuplicateCurrentColorEvent());
          },
        );
      },
      listener: (context, state) {},
    );
  }
}

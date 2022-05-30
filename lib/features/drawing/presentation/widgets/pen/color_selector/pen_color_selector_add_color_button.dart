import '../../../bloc/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:nil/nil.dart';

class PenColorSelectorAddColorButton extends StatelessWidget {
  const PenColorSelectorAddColorButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawingPenBloc, DrawingPenState>(
      builder: (context, state) {
        if (state.colors.items.length >= 15) return nil;
        return InkWell(
          child: Icon(PlatformIcons(context).add),
          onTap: () {
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

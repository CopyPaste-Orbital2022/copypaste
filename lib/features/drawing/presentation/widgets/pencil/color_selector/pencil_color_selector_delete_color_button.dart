import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../../../bloc/index.dart';

class PencilColorSelectorDeleteColorButton extends StatelessWidget {
  const PencilColorSelectorDeleteColorButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawingPencilBloc, DrawingPencilState>(
      builder: (context, state) {
        return PlatformIconButton(
          padding: EdgeInsets.zero,
          icon: Icon(
            PlatformIcons(context).delete,
            color: state.colors.items.length > 3 ? Colors.red : Colors.grey,
          ),
          onPressed: state.colors.items.length > 3
              ? () {
                  context
                      .read<DrawingPencilBloc>()
                      .add(const PencilDeleteCurrentColorEvent());
                }
              : null,
        );
      },
      listener: (context, state) {},
    );
  }
}

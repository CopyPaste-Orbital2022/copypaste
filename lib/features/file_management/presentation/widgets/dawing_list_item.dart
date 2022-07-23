import 'package:copypaste/core/injections/injection.dart';
import 'package:copypaste/core/routing/app_router.dart';
import 'package:copypaste/features/file_management/domain/entities/sp_drawing.dart';
import 'package:copypaste/features/file_management/presentation/bloc/file_management_bloc/file_management_bloc.dart';
import 'package:copypaste/features/file_management/presentation/widgets/modify_name_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class DrawingListItem extends StatelessWidget {
  const DrawingListItem(this.drawing, {Key? key}) : super(key: key);

  final SPDrawing drawing;

  static const dateTimeStyle = TextStyle(fontStyle: FontStyle.italic, fontSize: 10);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          getIt<FileManagementBloc>().add(
            FileManagementEvent.selectDrawing(drawing),
          );
        },
        onLongPress: () {
          ModifyTextDialog.show(
            context: context,
            initialText: drawing.name,
            title: PlatformText("Change Name"),
            onSubmit: (newValue) {
              getIt<FileManagementBloc>().add(
                FileManagementEvent.changeDrawingNameEvent(drawing, newValue),
              );
            },
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(drawing.name == "" ? "Untitled Drawing" : drawing.name),
                  Text(
                    "Created At: ${drawing.updatedAt.toString()}",
                    style: dateTimeStyle,
                  ),
                  Text(
                    "Modified At: ${drawing.updatedAt.toString()}",
                    style: dateTimeStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

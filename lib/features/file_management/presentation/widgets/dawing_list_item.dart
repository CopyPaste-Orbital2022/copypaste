import 'package:copypaste/features/file_management/domain/entities/sp_drawing.dart';
import 'package:flutter/material.dart';

class DrawingListItem extends StatelessWidget {
  const DrawingListItem(this.drawing, {Key? key}) : super(key: key);

  final SPDrawing drawing;

  static const dateTimeStyle =
      TextStyle(fontStyle: FontStyle.italic, fontSize: 10);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        onLongPress: () {},
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(drawing.name == "" ? "Untitled Drawing" : drawing.name),
                  Text(
                    "Created At: ${drawing.modifiedAt.toString()}",
                    style: dateTimeStyle,
                  ),
                  Text(
                    "Modified At: ${drawing.modifiedAt.toString()}",
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

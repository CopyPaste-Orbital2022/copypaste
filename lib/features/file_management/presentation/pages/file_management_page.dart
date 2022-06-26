import 'package:copypaste/core/injections/injection.dart';
import 'package:copypaste/features/file_management/presentation/bloc/file_management_bloc/file_management_bloc.dart';
import 'package:copypaste/features/file_management/presentation/widgets/dawing_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class FileManagementPage extends StatelessWidget {
  const FileManagementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: getIt<FileManagementBloc>(),
        )
      ],
      child: PlatformScaffold(
        appBar: PlatformAppBar(
          title: PlatformText(
            "Recent Drawings",
            style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
          ),
          trailingActions: [
            PlatformIconButton(
              icon: Icon(
                CupertinoIcons.arrow_2_circlepath,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              onPressed: () {},
              padding: EdgeInsets.zero,
            ),
            PlatformIconButton(
              icon: Icon(
                PlatformIcons(context).add,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              onPressed: () {
                getIt<FileManagementBloc>()
                    .add(const FileManagementEvent.createNewDrawingEvent());
              },
              padding: EdgeInsets.zero,
            )
          ],
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        ),
        body: BlocBuilder<FileManagementBloc, FileManagementState>(
          builder: (context, state) {
            return ListView.builder(
              itemCount: state.drawings.length,
              itemBuilder: (listContext, index) {
                return DrawingListItem(
                  state.drawings[index],
                );
              },
            );
          },
        ),
      ),
    );
  }
}

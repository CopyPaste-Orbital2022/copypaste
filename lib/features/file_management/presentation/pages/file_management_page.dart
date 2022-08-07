import 'package:copypaste/core/adaptive/adaptive_dialog.dart';
import 'package:copypaste/core/adaptive/adaptive_icon_button.dart';
import 'package:copypaste/core/injections/injection.dart';
import 'package:copypaste/core/utilities/assets/icon_paths.dart';
import 'package:copypaste/features/drawing/presentation/pages/drawing_page.dart';
import 'package:copypaste/features/file_management/domain/entities/sp_drawing.dart';
import 'package:copypaste/features/file_management/domain/usecases/delete_file_usecase.dart';
import 'package:copypaste/features/file_management/presentation/bloc/file_management_bloc/file_management_bloc.dart';
import 'package:copypaste/features/file_management/presentation/widgets/dawing_list_item.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:macos_ui/macos_ui.dart';
import 'package:my_stackable_popup_menu/my_stackable_popup_menu.dart';

import '../../../drawing/presentation/bloc/drawing_bloc/drawing_bloc.dart';
import '../../../drawing/presentation/bloc/history_manager_bloc/history_manager_bloc.dart';
import '../../../drawing/presentation/bloc/pen_settings_bloc/pen_settings_bloc.dart';
import '../../../drawing/presentation/bloc/selectable_bloc/blocs/current_tool_bloc.dart';
import '../../../drawing/presentation/bloc/selectable_bloc/blocs/eraser_width_bloc.dart';
import '../../../drawing/presentation/bloc/selectable_bloc/blocs/pen_color_bloc.dart';
import '../../../drawing/presentation/bloc/selectable_bloc/blocs/pen_width_bloc.dart';
import '../../domain/repositories/i_file_management_repository.dart';

class ToolbarIconButtonCore extends Equatable {
  const ToolbarIconButtonCore({
    required this.icon,
    required this.onPressed,
    required this.label,
  });
  final Widget icon;
  final VoidCallback onPressed;
  final String label;
  @override
  List<Object> get props => [icon, onPressed];

  ToolBarIconButton toToolBarIconButton([bool showLabel = true]) {
    return ToolBarIconButton(
      icon: icon,
      onPressed: onPressed,
      label: label,
      showLabel: showLabel,
    );
  }

  AdaptiveIconButton toAdaptiveIconButton() {
    return AdaptiveIconButton(
      icon: icon,
      onPressed: onPressed,
      padding: EdgeInsets.zero,
    );
  }
}

class FileManagementPage extends StatelessWidget {
  const FileManagementPage({Key? key}) : super(key: key);

  Widget _buildAdaptiveDialog(BuildContext context) {
    return AdaptiveTextDialog(
      appIcon: SvgPicture.asset(IconPaths.appIconPath),
      title: const Text("Create New File"),
      message: Column(
        children: const [
          Text("Please enter the name of the new file"),
          SizedBox(
            height: 10,
          ),
        ],
      ),
      onSubmitted: (value) {
        getIt<FileManagementBloc>().add(
          FileManagementEvent.createNewDrawingEvent(name: value),
        );
      },
    );
  }

  ToolbarIconButtonCore _createFileButtonCore(BuildContext context) {
    return ToolbarIconButtonCore(
      icon: Icon(
        PlatformIcons(context).add,
        // if light theme, then black; if darktheme, then white
        color: Theme.of(context).textTheme.bodyLarge?.color,
      ),
      onPressed: () async {
        debugPrint("Create new file");
        await showAdaptiveDialog(context, _buildAdaptiveDialog(context));
      },
      label: "Create",
    );
  }

  Widget _buildMacosSidebarList(BuildContext context, List<SPDrawing> drawings, FileManagementState state) {
    final selectedDrawing = state.selectedDrawing;
    int selectedIndex = 0;
    for (int i = 0; i < drawings.length; i++) {
      final drawing = drawings[i];
      if (drawing.id == selectedDrawing?.id) {
        selectedIndex = i;
      }
    }
    final drawingItems = drawings
        .map(
          (e) => SidebarItem(
            label: Text(
              e.name,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: AdaptiveIconButton(
              icon: Icon(
                PlatformIcons(context).delete,
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
              padding: EdgeInsets.zero,
              onPressed: () async {
                await getIt<DeleteFileUsecase>()(e);
              },
            ),
          ),
        )
        .toList();
    return SidebarItems(
      items: [
        ...drawingItems,
      ],
      currentIndex: selectedIndex,
      onChanged: (newIndex) {
        getIt<FileManagementBloc>().add(
          FileManagementEvent.selectDrawing(
            drawings[newIndex],
          ),
        );
      },
    );
  }

  Widget _buildMacos(BuildContext context, List<SPDrawing> drawings) {
    return BlocBuilder<FileManagementBloc, FileManagementState>(builder: (context, state) {
      return MacosWindow(
        sidebar: Sidebar(
          builder: (context, scrollController) => _buildMacosSidebarList(context, drawings, state),
          minWidth: 250,
          bottom: Column(children: [
            MacosListTile(
              title: Row(
                children: [
                  Text("Sketch Paste"),
                  Spacer(),
                  _createFileButtonCore(context).toAdaptiveIconButton(),
                ],
              ),
              subtitle: Text("V1.0.0 Beta Release"),
            ),
          ]),
        ),
        child: state.selectedDrawing != null
            ? const DrawingPage()
            : const Center(
                child: Text("Select New Drawing"),
              ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: getIt<CurrentToolBloc>(),
        ),
        BlocProvider.value(
          value: getIt<DrawingBloc>(),
        ),
        BlocProvider.value(
          value: getIt<EraserWidthBloc>(),
        ),
        BlocProvider.value(
          value: getIt<PenColorBloc>(),
        ),
        BlocProvider.value(
          value: getIt<PenWidthBloc>(),
        ),
        BlocProvider.value(
          value: getIt<HistoryManagerBloc>(),
        ),
        BlocProvider.value(
          value: getIt<PenSettingsBloc>(),
        ),
      ],
      child: MyPageWrapper(
        child: MultiBlocProvider(
          providers: [
            BlocProvider.value(
              value: getIt<FileManagementBloc>(),
            )
          ],
          child: StreamBuilder(
            stream: getIt<IFileManagementRepository>().drawingsStream,
            builder: (context, AsyncSnapshot<List<SPDrawing>> snapshot) {
              if (snapshot.data == null) {
                return Center(
                  child: PlatformCircularProgressIndicator(),
                );
              }
              switch (defaultTargetPlatform) {
                case TargetPlatform.macOS:
                  return _buildMacos(context, snapshot.data!);
                default:
                  return PlatformScaffold(
                    appBar: PlatformAppBar(
                      title: const Text("File Management Page"),
                      trailingActions: [
                        _createFileButtonCore(context).toAdaptiveIconButton(),
                      ],
                    ),
                    body: ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return DrawingListItem(snapshot.data![index]);
                      },
                    ),
                  );
              }
            },
          ),
        ),
      ),
    );
  }
}

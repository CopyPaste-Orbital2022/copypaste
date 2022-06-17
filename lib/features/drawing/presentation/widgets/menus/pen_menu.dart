import 'package:copypaste/features/drawing/presentation/bloc/pen_settings_bloc/pen_settings_bloc.dart';
import 'package:copypaste/features/drawing/presentation/widgets/menus/pen_menu/toggle_setting_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'pen_menu/slider_setting_item.dart';

class PenMenu extends StatelessWidget {
  const PenMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PenSettingsBloc, PenSettingsState>(
      builder: (context, state) {
        return SizedBox(
          width: 180,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              ToggleSettingItem(
                label: "Use Stylus",
                onChanged: (value) {
                  context.read<PenSettingsBloc>().add(
                        PenSettingsEvent.useStylusChanged(value),
                      );
                },
                value: state.useStylus,
              ),
              const SizedBox(height: 8),
              ToggleSettingItem(
                label: "Cap Start",
                onChanged: (value) {
                  context.read<PenSettingsBloc>().add(
                        PenSettingsEvent.capStartChanged(value),
                      );
                },
                value: state.capStart,
              ),
              const SizedBox(height: 8),
              ToggleSettingItem(
                label: "Cap End",
                onChanged: (value) {
                  context.read<PenSettingsBloc>().add(
                        PenSettingsEvent.capEndChanged(value),
                      );
                },
                value: state.capEnd,
              ),
              const SizedBox(height: 8),
              SliderSettingItem(
                label: "Thinning",
                value: state.thinning,
                onChanged: (newValue) {
                  context
                      .read<PenSettingsBloc>()
                      .add(PenSettingsEvent.thinningChanged(newValue));
                },
                min: 0,
                max: 1,
              ),
              const SizedBox(height: 8),
              SliderSettingItem(
                label: "Smoothing",
                value: state.smoothing,
                onChanged: (newValue) {
                  context
                      .read<PenSettingsBloc>()
                      .add(PenSettingsEvent.smoothingChanged(newValue));
                },
                min: 0,
                max: 1,
              ),
              const SizedBox(height: 8),
              // streamline settings
              SliderSettingItem(
                label: "Streamline",
                value: state.streamline,
                onChanged: (newValue) {
                  context
                      .read<PenSettingsBloc>()
                      .add(PenSettingsEvent.streamlineChanged(newValue));
                },
                min: 0,
                max: 1,
              ),
              const SizedBox(height: 8),
              // taper start settings
              SliderSettingItem(
                label: "Taper Start",
                value: state.taperStart,
                onChanged: (newValue) {
                  context
                      .read<PenSettingsBloc>()
                      .add(PenSettingsEvent.taperStartChanged(newValue));
                },
                min: 0,
                max: 10,
              ),

              const SizedBox(height: 8),

              // taper end settings

              SliderSettingItem(
                label: "Taper End",
                value: state.taperEnd,
                onChanged: (newValue) {
                  context
                      .read<PenSettingsBloc>()
                      .add(PenSettingsEvent.taperEndChanged(newValue));
                },
                min: 0,
                max: 10,
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'dart:ui';
import 'package:copypaste/core/extensions/shared_preferences_extension.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/injections/injection.dart';
import '../../domain/entities/selectable_param.dart';

class SelectableParamModel {
  final List<String> items;
  final int index;
  final int maxLimit;
  final int minLimit;

  SelectableParamModel({
    required this.items,
    required this.index,
    required this.maxLimit,
    required this.minLimit,
  });

  /// converts from the domain layer
  factory SelectableParamModel.fromDomain(SelectableParam param) {
    if (param is SelectableParam<Color>) {
      return SelectableParamModel(
        items: param.items.map((e) => e.value.toString()).toList(),
        index: param.index,
        maxLimit: param.maxLimit,
        minLimit: param.minLimit,
      );
    } else {
      return SelectableParamModel(
        items: param.items.map((e) => e.toString()).toList(),
        index: param.index,
        maxLimit: param.maxLimit,
        minLimit: param.minLimit,
      );
    }
  }

  /// converts to the domain layer
  SelectableParam<T> toDomain<T>() {
    if (T == Color) {
      return SelectableParam<Color>(
        items: items.map((e) => Color(int.parse(e))).toList(),
        index: index,
        maxLimit: maxLimit,
        minLimit: minLimit,
      ) as SelectableParam<T>;
    } else if (T == double) {
      return SelectableParam<double>(
        items: items.map((e) => double.parse(e)).toList(),
        index: index,
        maxLimit: maxLimit,
        minLimit: minLimit,
      ) as SelectableParam<T>;
    } else if (T == int) {
      return SelectableParam<int>(
        items: items.map((e) => int.parse(e)).toList(),
        index: index,
        maxLimit: maxLimit,
        minLimit: minLimit,
      ) as SelectableParam<T>;
    } else if (T == String) {
      return SelectableParam<String>(
        items: items,
        index: index,
        maxLimit: maxLimit,
        minLimit: minLimit,
      ) as SelectableParam<T>;
    } else {
      throw UnimplementedError();
    }
  }

  /// default values
  static final SelectableParamModel defaultEraserWidthSelectableParam =
      SelectableParamModel(
    items: ["10.0", "20.0", "30.0"],
    index: 0,
    maxLimit: 5,
    minLimit: 1,
  );
  static final SelectableParamModel defaultPenWidthSelectableParam =
      SelectableParamModel(
    items: ["5.0", "10.0", "15.0"],
    index: 0,
    maxLimit: 5,
    minLimit: 1,
  );
  static final SelectableParamModel defaultPenColorSelectableParam =
      SelectableParamModel(
    items: [
      0xFF000000.toString(),
      0xFFFF0000.toString(),
      0xFF00FF00.toString(),
    ],
    index: 0,
    maxLimit: 5,
    minLimit: 1,
  );

  factory SelectableParamModel.fromSharedPrefs(
      String key, SelectableParamModel defaultParam) {
    final prefs = getIt<SharedPreferences>();
    final tmpIndex = prefs.getElseSet("$key-index", defaultParam.index);
    final tmpItems = prefs.getElseSet("$key-items", defaultParam.items);
    final tmpMaxLimit =
        prefs.getElseSet("$key-max-limit", defaultParam.maxLimit);
    final tmpMinLimit =
        prefs.getElseSet("$key-min-limit", defaultParam.minLimit);
    return SelectableParamModel(
      items: tmpItems,
      index: tmpIndex,
      maxLimit: tmpMaxLimit,
      minLimit: tmpMinLimit,
    );
  }

  /// saves the current param to shared prefs
  void saveToSharedPrefs(String key) {
    final prefs = getIt<SharedPreferences>();
    prefs.setInt("$key-index", index);
    prefs.setStringList("$key-items", items);
    prefs.setInt("$key-max-limit", maxLimit);
    prefs.setInt("$key-min-limit", minLimit);
  }
}

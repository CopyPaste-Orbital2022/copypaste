import 'package:copypaste/core/errors/unsupported_shared_preferences_type_error.dart';
import 'package:shared_preferences/shared_preferences.dart';

extension SharedPreferencesX on SharedPreferences {
  /// Gets the value for "[prefix]-[id]" if it exists
  /// Resolves to [defaultValue], stores it, and
  /// returns it if the value for "[prefix]-[id]"
  /// does not exist.
  T getElseSet<T>(String key, T defaultValue) {
    if (T == int) {
      final int? result = getInt(key);
      if (result != null) {
        return result as T;
      } else {
        defaultValue as int;
        setInt(key, defaultValue);
        return defaultValue;
      }
    } else if (T == double) {
      final double? result = getDouble(key);
      if (result != null) {
        return result as T;
      } else {
        defaultValue as double;
        setDouble(key, defaultValue);
        return defaultValue;
      }
    } else if (T == String) {
      final String? result = getString(key);
      if (result != null) {
        return result as T;
      } else {
        defaultValue as String;
        setString(key, defaultValue);
        return defaultValue;
      }
    } else if (T == List<String>) {
      final List<String>? result = getStringList(key);
      if (result != null) {
        return result as T;
      } else {
        defaultValue as List<String>;
        setStringList(key, defaultValue);
        return defaultValue;
      }
    } else if (T == bool) {
      final bool? result = getBool(key);
      if (result != null) {
        return result as T;
      } else {
        defaultValue as bool;
        setBool(key, defaultValue);
        return defaultValue;
      }
    } else {
      throw UnsupportedSharedPreferencesTypeError();
    }
  }
}

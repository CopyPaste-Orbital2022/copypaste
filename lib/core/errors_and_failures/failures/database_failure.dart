import 'package:freezed_annotation/freezed_annotation.dart';

part 'database_failure.freezed.dart';

@freezed
class DatabaseFailure with _$DatabaseFailure {
  /// Returns a generic database failure
  const factory DatabaseFailure(String description) = _DatabaseFailure;

  /// Returns the error where the user has not created the drawing
  const factory DatabaseFailure.hasNoDrawing({String? description}) = DatabaseFailureHasNoDrawing;

  /// Returns this error when the user has not signed in
  const factory DatabaseFailure.userHasNotSignedIn({
    String? description,
  }) = DatabaseFailureUserHasNotSignedIn;

  /// has no json key
  const factory DatabaseFailure.jsonKeyNotFound({
    String? description,
  }) = DatabaseFailureJsonKeyNotFound;

  /// insertion failed
  const factory DatabaseFailure.insertionFailure({
    String? description,
  }) = DatabaseFailureInsertionFailure;

  /// json failed to parse
  const factory DatabaseFailure.jsonParseFailure({
    String? description,
  }) = DatabaseFailureJsonParseFailure;

  /// hive error
  const factory DatabaseFailure.hiveError({
    String? description,
  }) = DatabaseFailureHiveError;

  /// isar error
  const factory DatabaseFailure.isarError({
    String? description,
  }) = DatabaseFailureIsarError;
}

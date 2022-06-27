import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../errors_and_failures/errors/unexpected_value_error.dart';
import '../errors_and_failures/failures/value_failure.dart';

abstract class ValueObject<T> extends Equatable {
  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  T getValueOrCrash() {
    return value.fold((l) => throw UnexpectedValueError(l), id);
  }

  Either<ValueFailure<T>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  @override
  List<Object> get props => [value];
}

class UnexpectedValueError<T> extends Error {
  T unexpectedValue;
  UnexpectedValueError(this.unexpectedValue);
}

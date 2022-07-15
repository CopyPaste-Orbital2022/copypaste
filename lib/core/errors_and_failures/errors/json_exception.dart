class JsonException implements Exception {
  final String? message;

  JsonException({this.message});
}

class JsonKeyNotFoundException extends JsonException {
  JsonKeyNotFoundException({String? message}) : super(message: message);
}

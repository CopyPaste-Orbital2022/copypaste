import 'package:http/http.dart' as http;

abstract class ISPCloud {
  ISPCloud({
    this.scheme = 'https',
    this.host = 'fierce-dusk-15069.herokuapp.com',
    this.port,
    this.pathSegments = const ['api', 'v1'],
  });
  final String host;
  final String scheme;
  final int? port;
  final List<String> pathSegments;

  /// Returns a [Uri] with the given [segments] and [queryParameters].
  Uri getUri(
    List<String> segments, {
    Map<String, String>? queryParameters,
    String? fragment,
  }) {
    return Uri(
      scheme: scheme,
      host: host,
      port: port,
      pathSegments: pathSegments + segments,
      queryParameters: queryParameters,
      fragment: fragment,
    );
  }
}

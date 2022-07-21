import 'package:http/http.dart' as http;

abstract class ISPCloud {
  ISPCloud(
    this.client, {
    this.scheme = 'https',
    this.host = 'www.tinyhacks.app',
    this.port = 443,
    this.pathSegments = const ['api', 'v1'],
  });
  final http.Client client;
  final String host;
  final String scheme;
  final int port;
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

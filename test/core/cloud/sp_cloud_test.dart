import 'package:copypaste/core/cloud/sp_cloud.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';

class MockSPCloud extends ISPCloud {
  MockSPCloud({
    super.scheme = 'https',
    super.host = 'www.tinyhacks.app',
    super.port = 443,
    super.pathSegments = const ['api', 'v1'],
  });
}

void main() {
  test('test uri creation', () {
    final spCloud = MockSPCloud();
    final uri = spCloud.getUri(['register']);
    expect(uri.toString(), 'https://www.tinyhacks.app/api/v1/register');
  });
}

import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';

extension ScreenshotControllerX on ScreenshotController {
  Future<String?> takeScreenshotToTmpDir(
    String name, {
    double? pixelRatio,
  }) async {
    final image = await capture(pixelRatio: pixelRatio);
    if (image != null) {
      final tempDir = await getTemporaryDirectory();
      final tempFile = File('${tempDir.path}/$name.png');
      final writtenFile = await tempFile.writeAsBytes(image);
      return writtenFile.path;
    }
    return null;
  }
}

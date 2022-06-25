import 'dart:io';

bool get platformIsMaterial =>
    Platform.isAndroid ||
    Platform.isFuchsia ||
    Platform.isLinux ||
    Platform.isMacOS ||
    Platform.isWindows;

bool get platformIsDesktop =>
    Platform.isMacOS || Platform.isWindows || Platform.isLinux;

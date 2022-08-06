import 'package:copypaste/hacks.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    "test sendVoidRequest",
    () async {
      await sendVoidRequest();
    },
  );
}

import 'package:http/http.dart';

Future<void> sendVoidRequest() async {
  await get(Uri(
    scheme: 'https',
    host: 'fierce-dusk-15069.herokuapp.com',
  ));
}

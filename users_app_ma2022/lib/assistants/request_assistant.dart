import 'package:http/http.dart' as http;

class RequestAssistant {
  static Future<dynamic> receiveRequest(String url) async {
    await http.get(Uri.parse(url));
  }
}

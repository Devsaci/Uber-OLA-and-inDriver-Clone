import 'package:http/http.dart' as http;

class RequestAssistant {
  static Future<dynamic> receiveRequest(String url) async {
    http.Response httpResponse = await http.get(Uri.parse(url));
    if (httpResponse.statusCode == 200) {
      httpResponse.body; //json
    } //successful
  }
}

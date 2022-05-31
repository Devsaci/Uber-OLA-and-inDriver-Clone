import 'dart:convert';

import 'package:http/http.dart' as http;

class RequestAssistant {
  static Future<dynamic> receiveRequest(String url) async {
    http.Response httpResponse = await http.get(Uri.parse(url));
    if (httpResponse.statusCode == 200) {
      String responseData = httpResponse.body; //json
      var decodeResponseData = jsonDecode(responseData);
      return decodeResponseData;
    } //successful
  }
}

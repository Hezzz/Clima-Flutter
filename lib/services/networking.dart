import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  /// Create a helper class to handle the networking
  /// functions of the application.
  NetworkHelper(this.url);

  final String url;

  /// Gets the data from the OpenWeatherMap API
  Future<dynamic> getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String source = response.body;
      return jsonDecode(source);
    } else {
      print(response.statusCode);
    }
  }
}

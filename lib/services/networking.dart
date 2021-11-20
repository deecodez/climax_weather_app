import 'package:http/http.dart' as http;
import 'dart:convert';

class Network {
  final String apiUrl;
  Network(this.apiUrl);

  Future<dynamic> getData() async {
    var url = Uri.parse(apiUrl);
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var responseData = response.body;
      return jsonDecode(responseData);
    } else {
      print(response.statusCode);
    }
  }
}

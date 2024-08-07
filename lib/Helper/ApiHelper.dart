import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class JokesHelperApi {
  Future fetchData() async {
    String api = "https://official-joke-api.appspot.com/random_joke";
    Uri url = Uri.parse(api);
    Response response = await http.get(url);
    if (response.statusCode == 200) {
      final json = response.body;
      return jsonDecode(json);
    } else {}
  }
}
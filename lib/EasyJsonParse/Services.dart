import 'package:http/http.dart' as http;
import 'package:flutter_with_models/EasyJsonParse/Users.dart';

class Services {
  static const String url = 'https://jsonplaceholder.typicode.com/users';

  static Future<List<User>> getUsers() async {
    try {
      final response = await http
          .get(Uri.parse(url), headers: {"Accept": "aplication/json"});
      if (200 == response.statusCode) {
        final List<User> users = usersFromJson(response.body);
        return users;
      } else {
        return List<User>.empty();
      }
    } catch (e) {
      return List<User>.empty();
    }
  }
}

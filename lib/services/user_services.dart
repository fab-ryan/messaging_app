import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:messaging_app/model/user_models.dart';

class UserServices {
  static Future getUser() async {
    try {
      String db = 'users';
      final url = Uri.parse("https://jsonplaceholder.typicode.com/$db");

      final response = await http.get(url);
      final decoded = jsonDecode(response.body);
      List<UserModel> users = [];
      for (var userObj in decoded) {
        users.add(UserModel.fromJson(userObj));
      }
      return users;
    } catch (err) {
      print(err.toString());
      return null;
    }
  }
}

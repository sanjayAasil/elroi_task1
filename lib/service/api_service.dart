import 'dart:convert';

import 'package:http/http.dart';

import '../model/user_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const url = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<User>> getUsers() async {
    try {
      Response res = await http.get(Uri.parse(url));

      if (res.statusCode == 200) {
        final List data = jsonDecode(res.body);

        List<User> users = data.map((e) => User(e)).toList();

        print('checkkk ejbj users ${users.length}');

        return users;
      } else {
        print('error response api ');
        return [];
      }
    } catch (e) {
      print('error fetching api $e');
      return [];
    }
  }
}

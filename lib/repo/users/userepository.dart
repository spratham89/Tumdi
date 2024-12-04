import 'dart:convert';

import 'package:http/http.dart';
import 'package:tumdi_1/models/users/user_model.dart';

class UserRepository {
  String userUrl =
      'https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie';

  Future<List<UserModel>> getUsers() async {
    Response response = await get(Uri.parse(userUrl));

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      return result.map((e) => UserModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

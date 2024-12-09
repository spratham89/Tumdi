import 'dart:convert';

import 'package:http/http.dart';
import 'package:tumdi_1/models/blogs/blogs_model.dart';

class BlogsRepository {
  String blogUrl = 'https://fakestoreapiserver.reactbd.com/photos';

  Future<List<BlogsModel>> getBlogsImages() async {
    Response response = await get(Uri.parse(blogUrl));

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      return result.map((e) => BlogsModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

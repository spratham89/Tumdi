import 'dart:convert';

import 'package:http/http.dart';
import 'package:tumdi_1/models/banner/banner_model.dart';

class BannerRepository {
  String blogUrl = 'https://fakestoreapiserver.reactbd.com/photos';

  Future<List<BannersModel>> getBannerImages() async {
    Response response = await get(Uri.parse(blogUrl));

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      return result.map((e) => BannersModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

import 'dart:convert';

import 'package:http/http.dart';
import 'package:tumdi_1/models/gallery/gallery_model.dart';

class GalleryRepository {
  String userUrl = 'https://fakestoreapiserver.reactbd.com/photos';

  Future<List<GalleryModel>> getGalleryImages() async {
    Response response = await get(Uri.parse(userUrl));

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      return result.map((e) => GalleryModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

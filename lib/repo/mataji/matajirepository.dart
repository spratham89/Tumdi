import 'dart:convert';

import 'package:http/http.dart';
import 'package:tumdi_1/models/mataji/mataji_model.dart';

class MatajiRepository {
  String matajiUrl = 'https://fakestoreapiserver.reactbd.com/photos';

  Future<List<MatajiModel>> getMatajiImages() async {
    Response response = await get(Uri.parse(matajiUrl));

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      return result.map((e) => MatajiModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

import 'dart:convert';

import 'package:http/http.dart';
import 'package:tumdi_1/models/business/business_model.dart';

class BusinessRepository {
  String businessUrl = 'https://fakestoreapiserver.reactbd.com/photos';

  Future<List<BusinessModel>> getBusinessImages() async {
    Response response = await get(Uri.parse(businessUrl));

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      return result.map((e) => BusinessModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

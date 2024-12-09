import 'dart:convert';

import 'package:http/http.dart';
import 'package:tumdi_1/models/jobs/job_model.dart';

class JobRepository {
  String blogUrl = 'https://fakestoreapiserver.reactbd.com/photos';

  Future<List<JobModel>> getJobsImages() async {
    Response response = await get(Uri.parse(blogUrl));

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      return result.map((e) => JobModel.fromJson(e)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

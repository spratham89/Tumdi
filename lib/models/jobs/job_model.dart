// To parse this JSON data, do
//
//     final JobModel = JobModelFromJson(jsonString);

import 'dart:convert';

class JobModel {
  int? id;
  String title;
  String url;
  String? thumbnailUrl;

  JobModel({
    this.id,
    required this.title,
    required this.url,
    this.thumbnailUrl,
  });

  factory JobModel.fromJson(Map<String, dynamic> json) => JobModel(
        id: json["_id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
      };
}

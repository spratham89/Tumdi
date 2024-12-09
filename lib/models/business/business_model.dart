// To parse this JSON data, do
//
//     final BusinessModel = BusinessModelFromJson(jsonString);

import 'dart:convert';

class BusinessModel {
  int? id;
  String title;
  String url;
  String? thumbnailUrl;

  BusinessModel({
    this.id,
    required this.title,
    required this.url,
    this.thumbnailUrl,
  });

  factory BusinessModel.fromJson(Map<String, dynamic> json) => BusinessModel(
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

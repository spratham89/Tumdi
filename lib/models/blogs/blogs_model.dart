// To parse this JSON data, do
//
//     final BlogsModel = BlogsModelFromJson(jsonString);

import 'dart:convert';

class BlogsModel {
  int? id;
  String title;
  String url;
  String? thumbnailUrl;

  BlogsModel({
    this.id,
    required this.title,
    required this.url,
    this.thumbnailUrl,
  });

  factory BlogsModel.fromJson(Map<String, dynamic> json) => BlogsModel(
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

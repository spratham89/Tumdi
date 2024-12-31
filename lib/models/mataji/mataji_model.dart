// To parse this JSON data, do
//
//     final MatajiModel = MatajiModelFromJson(jsonString);

import 'dart:convert';

class MatajiModel {
  int? id;
  String title;
  String url;
  String? thumbnailUrl;

  MatajiModel({
    this.id,
    required this.title,
    required this.url,
    this.thumbnailUrl,
  });

  factory MatajiModel.fromJson(Map<String, dynamic> json) => MatajiModel(
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

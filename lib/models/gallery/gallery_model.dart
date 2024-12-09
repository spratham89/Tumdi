// To parse this JSON data, do
//
//     final GalleryModel = GalleryModelFromJson(jsonString);

import 'dart:convert';

class GalleryModel {
  int? id;
  String title;
  String url;
  String? thumbnailUrl;

  GalleryModel({
    this.id,
    required this.title,
    required this.url,
    this.thumbnailUrl,
  });

  factory GalleryModel.fromJson(Map<String, dynamic> json) => GalleryModel(
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

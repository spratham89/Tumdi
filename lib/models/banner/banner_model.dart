import 'dart:convert';

class BannersModel {
  int? id;
  String title;
  String url;
  String? thumbnailUrl;

  BannersModel({
    this.id,
    required this.title,
    required this.url,
    this.thumbnailUrl,
  });

  factory BannersModel.fromJson(Map<String, dynamic> json) => BannersModel(
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

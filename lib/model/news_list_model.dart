// To parse this JSON data, do
//
//     final newsListModel = newsListModelFromJson(jsonString);

import 'dart:convert';

NewsListModel newsListModelFromJson(String str) => NewsListModel.fromJson(json.decode(str));

String newsListModelToJson(NewsListModel data) => json.encode(data.toJson());

class NewsListModel {
  String? status;
  List<Source>? sources;

  NewsListModel({
    this.status,
    this.sources,
  });

  factory NewsListModel.fromJson(Map<String, dynamic> json) => NewsListModel(
        status: json["status"],
        sources: json["sources"] == null
            ? []
            : List<Source>.from(json["sources"]!.map((x) => Source.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "sources": sources == null ? [] : List<dynamic>.from(sources!.map((x) => x.toJson())),
      };
}

class Source {
  String? id;
  String? name;
  String? description;
  String? url;
  String? category;
  String? language;
  String? country;

  Source({
    this.id,
    this.name,
    this.description,
    this.url,
    this.category,
    this.language,
    this.country,
  });

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        url: json["url"],
        category: json["category"],
        language: json["language"],
        country: json["country"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "url": url,
        "category": category,
        "language": language,
        "country": country,
      };
}

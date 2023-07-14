// To parse this JSON data, do
//
//     final languageUpdateModel = languageUpdateModelFromJson(jsonString);

import 'dart:convert';

LanguageUpdateModel languageUpdateModelFromJson(String str) =>
    LanguageUpdateModel.fromJson(json.decode(str) as Map<String, dynamic>);

String languageUpdateModelToJson(LanguageUpdateModel data) =>
    json.encode(data.toJson());

class LanguageUpdateModel {
  LanguageUpdateModel({
    this.id,
    this.name,
    this.image,
  });

  factory LanguageUpdateModel.fromJson(Map<String, dynamic> json) =>
      LanguageUpdateModel(
        id: json['id'].toString(),
        name: json['name'].toString(),
        image: json['image'].toString(),
      );
  String? id;
  String? name;
  String? image;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
      };
}

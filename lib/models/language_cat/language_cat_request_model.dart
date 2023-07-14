// To parse this JSON data, do
//
//     final languageCatRequestModel = languageCatRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_cat_request_model.freezed.dart';
part 'language_cat_request_model.g.dart';

LanguageCatRequestModel languageCatRequestModelFromJson(String str) =>
    LanguageCatRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);

String languageCatRequestModelToJson(LanguageCatRequestModel data) =>
    json.encode(data.toJson());

@freezed
class LanguageCatRequestModel with _$LanguageCatRequestModel {
  const factory LanguageCatRequestModel({
    String? name,
    String? image,
  }) = _LanguageCatRequestModel;

  factory LanguageCatRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageCatRequestModelFromJson(json);
}

// To parse this JSON data, do
//
//     final languageCatDelRequestModel = languageCatDelRequestModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_cat_del_request_model.freezed.dart';
part 'language_cat_del_request_model.g.dart';

LanguageCatDelRequestModel languageCatDelRequestModelFromJson(String str) =>
    LanguageCatDelRequestModel.fromJson(
      json.decode(str) as Map<String, dynamic>,
    );

String languageCatDelRequestModelToJson(LanguageCatDelRequestModel data) =>
    json.encode(data.toJson());

@freezed
class LanguageCatDelRequestModel with _$LanguageCatDelRequestModel {
  const factory LanguageCatDelRequestModel({
    String? id,
  }) = _LanguageCatDelRequestModel;

  factory LanguageCatDelRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageCatDelRequestModelFromJson(json);
}

// To parse this JSON data, do
//
//     final languageListModel = languageListModelFromJson(jsonString);

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mongo_dart/mongo_dart.dart';

part 'language_list_model.freezed.dart';
part 'language_list_model.g.dart';

LanguageListModel languageListModelFromJson(String str) =>
    LanguageListModel.fromJson(json.decode(str) as Map<String, dynamic>);

String languageListModelToJson(LanguageListModel data) =>
    json.encode(data.toJson());

@freezed
class LanguageListModel with _$LanguageListModel {
  const factory LanguageListModel({
    String? msg,
    List<Datum>? data,
  }) = _LanguageListModel;

  factory LanguageListModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageListModelFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(fromJson: _objectIdFromJson, toJson: _objectIdToJson) ObjectId? id,
    String? name,
    String? image,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

ObjectId? _objectIdFromJson(String json) =>
    json != null ? ObjectId.fromHexString(json) : null;

dynamic _objectIdToJson(ObjectId? objectId) => objectId?.toHexString();

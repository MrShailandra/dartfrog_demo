import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request_model.freezed.dart';
part 'register_request_model.g.dart';

RegisterRequestModel registerRequestModelFromJson(String str) =>
    RegisterRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);

String registerRequestModelToJson(RegisterRequestModel data) =>
    json.encode(data.toJson());

@freezed
class RegisterRequestModel with _$RegisterRequestModel {
  const factory RegisterRequestModel({
    String? name,
    String? email,
    String? password,
    String? mobileNo,
    double? lat,
    double? lang,
    String? languageId,
    List? interestedTopic,
  }) = _RegisterRequestModel;

  factory RegisterRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestModelFromJson(json);
}

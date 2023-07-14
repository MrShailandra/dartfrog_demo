// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterRequestModel _$$_RegisterRequestModelFromJson(
        Map<String, dynamic> json) =>
    _$_RegisterRequestModel(
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      mobileNo: json['mobileNo'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lang: (json['lang'] as num?)?.toDouble(),
      languageId: json['languageId'] as String?,
      interestedTopic: json['interestedTopic'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_RegisterRequestModelToJson(
        _$_RegisterRequestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'mobileNo': instance.mobileNo,
      'lat': instance.lat,
      'lang': instance.lang,
      'languageId': instance.languageId,
      'interestedTopic': instance.interestedTopic,
    };

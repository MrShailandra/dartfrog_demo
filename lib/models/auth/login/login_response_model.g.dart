// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponseModel _$$_LoginResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_LoginResponseModel(
      accessToken: json['accessToken'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      intrestList: json['intrestList'] as List<dynamic>,
      lat: (json['lat'] as num).toDouble(),
      lang: (json['lang'] as num).toDouble(),
      langId: json['langId'] as String,
      mobileNumber: json['mobileNumber'] as String,
    );

Map<String, dynamic> _$$_LoginResponseModelToJson(
        _$_LoginResponseModel instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'name': instance.name,
      'email': instance.email,
      'intrestList': instance.intrestList,
      'lat': instance.lat,
      'lang': instance.lang,
      'langId': instance.langId,
      'mobileNumber': instance.mobileNumber,
    };

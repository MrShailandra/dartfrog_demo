// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      userId: json['userId'] as String,
      name: json['name'] as String,
      mobileNo: json['mobileNo'] as String,
      lat: (json['lat'] as num).toDouble(),
      lang: (json['lang'] as num).toDouble(),
      lang_id: json['lang_id'] as String,
      intrested_topic: json['intrested_topic'] as List<dynamic>,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'mobileNo': instance.mobileNo,
      'lat': instance.lat,
      'lang': instance.lang,
      'lang_id': instance.lang_id,
      'intrested_topic': instance.intrested_topic,
      'email': instance.email,
      'password': instance.password,
    };

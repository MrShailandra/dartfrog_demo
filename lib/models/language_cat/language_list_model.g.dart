// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LanguageListModel _$$_LanguageListModelFromJson(Map<String, dynamic> json) =>
    _$_LanguageListModel(
      msg: json['msg'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LanguageListModelToJson(
  _$_LanguageListModel instance,
) =>
    <String, dynamic>{
      'msg': instance.msg,
      'data': instance.data,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      id: json['_id'] as ObjectId?,
      name: json['name'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };

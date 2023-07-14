// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_cat_del_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguageCatDelRequestModel _$LanguageCatDelRequestModelFromJson(
    Map<String, dynamic> json) {
  return _LanguageCatDelRequestModel.fromJson(json);
}

/// @nodoc
mixin _$LanguageCatDelRequestModel {
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageCatDelRequestModelCopyWith<LanguageCatDelRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageCatDelRequestModelCopyWith<$Res> {
  factory $LanguageCatDelRequestModelCopyWith(LanguageCatDelRequestModel value,
          $Res Function(LanguageCatDelRequestModel) then) =
      _$LanguageCatDelRequestModelCopyWithImpl<$Res,
          LanguageCatDelRequestModel>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$LanguageCatDelRequestModelCopyWithImpl<$Res,
        $Val extends LanguageCatDelRequestModel>
    implements $LanguageCatDelRequestModelCopyWith<$Res> {
  _$LanguageCatDelRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LanguageCatDelRequestModelCopyWith<$Res>
    implements $LanguageCatDelRequestModelCopyWith<$Res> {
  factory _$$_LanguageCatDelRequestModelCopyWith(
          _$_LanguageCatDelRequestModel value,
          $Res Function(_$_LanguageCatDelRequestModel) then) =
      __$$_LanguageCatDelRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$_LanguageCatDelRequestModelCopyWithImpl<$Res>
    extends _$LanguageCatDelRequestModelCopyWithImpl<$Res,
        _$_LanguageCatDelRequestModel>
    implements _$$_LanguageCatDelRequestModelCopyWith<$Res> {
  __$$_LanguageCatDelRequestModelCopyWithImpl(
      _$_LanguageCatDelRequestModel _value,
      $Res Function(_$_LanguageCatDelRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_LanguageCatDelRequestModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LanguageCatDelRequestModel implements _LanguageCatDelRequestModel {
  const _$_LanguageCatDelRequestModel({this.id});

  factory _$_LanguageCatDelRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_LanguageCatDelRequestModelFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'LanguageCatDelRequestModel(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguageCatDelRequestModel &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LanguageCatDelRequestModelCopyWith<_$_LanguageCatDelRequestModel>
      get copyWith => __$$_LanguageCatDelRequestModelCopyWithImpl<
          _$_LanguageCatDelRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LanguageCatDelRequestModelToJson(
      this,
    );
  }
}

abstract class _LanguageCatDelRequestModel
    implements LanguageCatDelRequestModel {
  const factory _LanguageCatDelRequestModel({final String? id}) =
      _$_LanguageCatDelRequestModel;

  factory _LanguageCatDelRequestModel.fromJson(Map<String, dynamic> json) =
      _$_LanguageCatDelRequestModel.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_LanguageCatDelRequestModelCopyWith<_$_LanguageCatDelRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_cat_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguageCatRequestModel _$LanguageCatRequestModelFromJson(
    Map<String, dynamic> json) {
  return _LanguageCatRequestModel.fromJson(json);
}

/// @nodoc
mixin _$LanguageCatRequestModel {
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageCatRequestModelCopyWith<LanguageCatRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageCatRequestModelCopyWith<$Res> {
  factory $LanguageCatRequestModelCopyWith(LanguageCatRequestModel value,
          $Res Function(LanguageCatRequestModel) then) =
      _$LanguageCatRequestModelCopyWithImpl<$Res, LanguageCatRequestModel>;
  @useResult
  $Res call({String? name, String? image});
}

/// @nodoc
class _$LanguageCatRequestModelCopyWithImpl<$Res,
        $Val extends LanguageCatRequestModel>
    implements $LanguageCatRequestModelCopyWith<$Res> {
  _$LanguageCatRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LanguageCatRequestModelCopyWith<$Res>
    implements $LanguageCatRequestModelCopyWith<$Res> {
  factory _$$_LanguageCatRequestModelCopyWith(_$_LanguageCatRequestModel value,
          $Res Function(_$_LanguageCatRequestModel) then) =
      __$$_LanguageCatRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? image});
}

/// @nodoc
class __$$_LanguageCatRequestModelCopyWithImpl<$Res>
    extends _$LanguageCatRequestModelCopyWithImpl<$Res,
        _$_LanguageCatRequestModel>
    implements _$$_LanguageCatRequestModelCopyWith<$Res> {
  __$$_LanguageCatRequestModelCopyWithImpl(_$_LanguageCatRequestModel _value,
      $Res Function(_$_LanguageCatRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_LanguageCatRequestModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LanguageCatRequestModel implements _LanguageCatRequestModel {
  const _$_LanguageCatRequestModel({this.name, this.image});

  factory _$_LanguageCatRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_LanguageCatRequestModelFromJson(json);

  @override
  final String? name;
  @override
  final String? image;

  @override
  String toString() {
    return 'LanguageCatRequestModel(name: $name, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguageCatRequestModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LanguageCatRequestModelCopyWith<_$_LanguageCatRequestModel>
      get copyWith =>
          __$$_LanguageCatRequestModelCopyWithImpl<_$_LanguageCatRequestModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LanguageCatRequestModelToJson(
      this,
    );
  }
}

abstract class _LanguageCatRequestModel implements LanguageCatRequestModel {
  const factory _LanguageCatRequestModel(
      {final String? name, final String? image}) = _$_LanguageCatRequestModel;

  factory _LanguageCatRequestModel.fromJson(Map<String, dynamic> json) =
      _$_LanguageCatRequestModel.fromJson;

  @override
  String? get name;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_LanguageCatRequestModelCopyWith<_$_LanguageCatRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

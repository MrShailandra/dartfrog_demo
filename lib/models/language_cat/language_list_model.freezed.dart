// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguageListModel _$LanguageListModelFromJson(Map<String, dynamic> json) {
  return _LanguageListModel.fromJson(json);
}

/// @nodoc
mixin _$LanguageListModel {
  String? get msg => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageListModelCopyWith<LanguageListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageListModelCopyWith<$Res> {
  factory $LanguageListModelCopyWith(
          LanguageListModel value, $Res Function(LanguageListModel) then) =
      _$LanguageListModelCopyWithImpl<$Res, LanguageListModel>;
  @useResult
  $Res call({String? msg, List<Datum>? data});
}

/// @nodoc
class _$LanguageListModelCopyWithImpl<$Res, $Val extends LanguageListModel>
    implements $LanguageListModelCopyWith<$Res> {
  _$LanguageListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LanguageListModelCopyWith<$Res>
    implements $LanguageListModelCopyWith<$Res> {
  factory _$$_LanguageListModelCopyWith(_$_LanguageListModel value,
          $Res Function(_$_LanguageListModel) then) =
      __$$_LanguageListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? msg, List<Datum>? data});
}

/// @nodoc
class __$$_LanguageListModelCopyWithImpl<$Res>
    extends _$LanguageListModelCopyWithImpl<$Res, _$_LanguageListModel>
    implements _$$_LanguageListModelCopyWith<$Res> {
  __$$_LanguageListModelCopyWithImpl(
      _$_LanguageListModel _value, $Res Function(_$_LanguageListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_LanguageListModel(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LanguageListModel implements _LanguageListModel {
  const _$_LanguageListModel({this.msg, final List<Datum>? data})
      : _data = data;

  factory _$_LanguageListModel.fromJson(Map<String, dynamic> json) =>
      _$$_LanguageListModelFromJson(json);

  @override
  final String? msg;
  final List<Datum>? _data;
  @override
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LanguageListModel(msg: $msg, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguageListModel &&
            (identical(other.msg, msg) || other.msg == msg) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, msg, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LanguageListModelCopyWith<_$_LanguageListModel> get copyWith =>
      __$$_LanguageListModelCopyWithImpl<_$_LanguageListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LanguageListModelToJson(
      this,
    );
  }
}

abstract class _LanguageListModel implements LanguageListModel {
  const factory _LanguageListModel(
      {final String? msg, final List<Datum>? data}) = _$_LanguageListModel;

  factory _LanguageListModel.fromJson(Map<String, dynamic> json) =
      _$_LanguageListModel.fromJson;

  @override
  String? get msg;
  @override
  List<Datum>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_LanguageListModelCopyWith<_$_LanguageListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  @JsonKey(fromJson: _objectIdFromJson, toJson: _objectIdToJson)
  ObjectId? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _objectIdFromJson, toJson: _objectIdToJson)
      ObjectId? id,
      String? name,
      String? image});
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ObjectId?,
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
abstract class _$$_DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$_DatumCopyWith(_$_Datum value, $Res Function(_$_Datum) then) =
      __$$_DatumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _objectIdFromJson, toJson: _objectIdToJson)
      ObjectId? id,
      String? name,
      String? image});
}

/// @nodoc
class __$$_DatumCopyWithImpl<$Res> extends _$DatumCopyWithImpl<$Res, _$_Datum>
    implements _$$_DatumCopyWith<$Res> {
  __$$_DatumCopyWithImpl(_$_Datum _value, $Res Function(_$_Datum) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_Datum(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ObjectId?,
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
class _$_Datum implements _Datum {
  const _$_Datum(
      {@JsonKey(fromJson: _objectIdFromJson, toJson: _objectIdToJson) this.id,
      this.name,
      this.image});

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$$_DatumFromJson(json);

  @override
  @JsonKey(fromJson: _objectIdFromJson, toJson: _objectIdToJson)
  final ObjectId? id;
  @override
  final String? name;
  @override
  final String? image;

  @override
  String toString() {
    return 'Datum(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Datum &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      __$$_DatumCopyWithImpl<_$_Datum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DatumToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {@JsonKey(fromJson: _objectIdFromJson, toJson: _objectIdToJson)
      final ObjectId? id,
      final String? name,
      final String? image}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  @JsonKey(fromJson: _objectIdFromJson, toJson: _objectIdToJson)
  ObjectId? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      throw _privateConstructorUsedError;
}

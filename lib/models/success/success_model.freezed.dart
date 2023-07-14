// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'success_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SuccessModel _$SuccessModelFromJson(Map<String, dynamic> json) {
  return _SuccessModel.fromJson(json);
}

/// @nodoc
mixin _$SuccessModel {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessModelCopyWith<SuccessModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessModelCopyWith<$Res> {
  factory $SuccessModelCopyWith(
          SuccessModel value, $Res Function(SuccessModel) then) =
      _$SuccessModelCopyWithImpl<$Res, SuccessModel>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$SuccessModelCopyWithImpl<$Res, $Val extends SuccessModel>
    implements $SuccessModelCopyWith<$Res> {
  _$SuccessModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SuccessModelCopyWith<$Res>
    implements $SuccessModelCopyWith<$Res> {
  factory _$$_SuccessModelCopyWith(
          _$_SuccessModel value, $Res Function(_$_SuccessModel) then) =
      __$$_SuccessModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_SuccessModelCopyWithImpl<$Res>
    extends _$SuccessModelCopyWithImpl<$Res, _$_SuccessModel>
    implements _$$_SuccessModelCopyWith<$Res> {
  __$$_SuccessModelCopyWithImpl(
      _$_SuccessModel _value, $Res Function(_$_SuccessModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_SuccessModel(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SuccessModel implements _SuccessModel {
  const _$_SuccessModel({required this.message});

  factory _$_SuccessModel.fromJson(Map<String, dynamic> json) =>
      _$$_SuccessModelFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'SuccessModel(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessModel &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessModelCopyWith<_$_SuccessModel> get copyWith =>
      __$$_SuccessModelCopyWithImpl<_$_SuccessModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SuccessModelToJson(
      this,
    );
  }
}

abstract class _SuccessModel implements SuccessModel {
  const factory _SuccessModel({required final String message}) =
      _$_SuccessModel;

  factory _SuccessModel.fromJson(Map<String, dynamic> json) =
      _$_SuccessModel.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_SuccessModelCopyWith<_$_SuccessModel> get copyWith =>
      throw _privateConstructorUsedError;
}

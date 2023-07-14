// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterRequestModel _$RegisterRequestModelFromJson(Map<String, dynamic> json) {
  return _RegisterRequestModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterRequestModel {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get mobileNo => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lang => throw _privateConstructorUsedError;
  String? get languageId => throw _privateConstructorUsedError;
  List<dynamic>? get interestedTopic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterRequestModelCopyWith<RegisterRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterRequestModelCopyWith<$Res> {
  factory $RegisterRequestModelCopyWith(RegisterRequestModel value,
          $Res Function(RegisterRequestModel) then) =
      _$RegisterRequestModelCopyWithImpl<$Res, RegisterRequestModel>;
  @useResult
  $Res call(
      {String? name,
      String? email,
      String? password,
      String? mobileNo,
      double? lat,
      double? lang,
      String? languageId,
      List<dynamic>? interestedTopic});
}

/// @nodoc
class _$RegisterRequestModelCopyWithImpl<$Res,
        $Val extends RegisterRequestModel>
    implements $RegisterRequestModelCopyWith<$Res> {
  _$RegisterRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? mobileNo = freezed,
    Object? lat = freezed,
    Object? lang = freezed,
    Object? languageId = freezed,
    Object? interestedTopic = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as double?,
      languageId: freezed == languageId
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as String?,
      interestedTopic: freezed == interestedTopic
          ? _value.interestedTopic
          : interestedTopic // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterRequestModelCopyWith<$Res>
    implements $RegisterRequestModelCopyWith<$Res> {
  factory _$$_RegisterRequestModelCopyWith(_$_RegisterRequestModel value,
          $Res Function(_$_RegisterRequestModel) then) =
      __$$_RegisterRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? email,
      String? password,
      String? mobileNo,
      double? lat,
      double? lang,
      String? languageId,
      List<dynamic>? interestedTopic});
}

/// @nodoc
class __$$_RegisterRequestModelCopyWithImpl<$Res>
    extends _$RegisterRequestModelCopyWithImpl<$Res, _$_RegisterRequestModel>
    implements _$$_RegisterRequestModelCopyWith<$Res> {
  __$$_RegisterRequestModelCopyWithImpl(_$_RegisterRequestModel _value,
      $Res Function(_$_RegisterRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? mobileNo = freezed,
    Object? lat = freezed,
    Object? lang = freezed,
    Object? languageId = freezed,
    Object? interestedTopic = freezed,
  }) {
    return _then(_$_RegisterRequestModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as double?,
      languageId: freezed == languageId
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as String?,
      interestedTopic: freezed == interestedTopic
          ? _value._interestedTopic
          : interestedTopic // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterRequestModel implements _RegisterRequestModel {
  const _$_RegisterRequestModel(
      {this.name,
      this.email,
      this.password,
      this.mobileNo,
      this.lat,
      this.lang,
      this.languageId,
      final List<dynamic>? interestedTopic})
      : _interestedTopic = interestedTopic;

  factory _$_RegisterRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterRequestModelFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? mobileNo;
  @override
  final double? lat;
  @override
  final double? lang;
  @override
  final String? languageId;
  final List<dynamic>? _interestedTopic;
  @override
  List<dynamic>? get interestedTopic {
    final value = _interestedTopic;
    if (value == null) return null;
    if (_interestedTopic is EqualUnmodifiableListView) return _interestedTopic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RegisterRequestModel(name: $name, email: $email, password: $password, mobileNo: $mobileNo, lat: $lat, lang: $lang, languageId: $languageId, interestedTopic: $interestedTopic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterRequestModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.languageId, languageId) ||
                other.languageId == languageId) &&
            const DeepCollectionEquality()
                .equals(other._interestedTopic, _interestedTopic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      email,
      password,
      mobileNo,
      lat,
      lang,
      languageId,
      const DeepCollectionEquality().hash(_interestedTopic));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterRequestModelCopyWith<_$_RegisterRequestModel> get copyWith =>
      __$$_RegisterRequestModelCopyWithImpl<_$_RegisterRequestModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterRequestModelToJson(
      this,
    );
  }
}

abstract class _RegisterRequestModel implements RegisterRequestModel {
  const factory _RegisterRequestModel(
      {final String? name,
      final String? email,
      final String? password,
      final String? mobileNo,
      final double? lat,
      final double? lang,
      final String? languageId,
      final List<dynamic>? interestedTopic}) = _$_RegisterRequestModel;

  factory _RegisterRequestModel.fromJson(Map<String, dynamic> json) =
      _$_RegisterRequestModel.fromJson;

  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get mobileNo;
  @override
  double? get lat;
  @override
  double? get lang;
  @override
  String? get languageId;
  @override
  List<dynamic>? get interestedTopic;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterRequestModelCopyWith<_$_RegisterRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

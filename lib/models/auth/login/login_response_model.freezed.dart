// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) {
  return _LoginResponseModel.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseModel {
  String get accessToken => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  List<dynamic> get intrestList => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lang => throw _privateConstructorUsedError;
  String get langId => throw _privateConstructorUsedError;
  String get mobileNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseModelCopyWith<LoginResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseModelCopyWith<$Res> {
  factory $LoginResponseModelCopyWith(
          LoginResponseModel value, $Res Function(LoginResponseModel) then) =
      _$LoginResponseModelCopyWithImpl<$Res, LoginResponseModel>;
  @useResult
  $Res call(
      {String accessToken,
      String name,
      String email,
      List<dynamic> intrestList,
      double lat,
      double lang,
      String langId,
      String mobileNumber});
}

/// @nodoc
class _$LoginResponseModelCopyWithImpl<$Res, $Val extends LoginResponseModel>
    implements $LoginResponseModelCopyWith<$Res> {
  _$LoginResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? name = null,
    Object? email = null,
    Object? intrestList = null,
    Object? lat = null,
    Object? lang = null,
    Object? langId = null,
    Object? mobileNumber = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      intrestList: null == intrestList
          ? _value.intrestList
          : intrestList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as double,
      langId: null == langId
          ? _value.langId
          : langId // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginResponseModelCopyWith<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  factory _$$_LoginResponseModelCopyWith(_$_LoginResponseModel value,
          $Res Function(_$_LoginResponseModel) then) =
      __$$_LoginResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accessToken,
      String name,
      String email,
      List<dynamic> intrestList,
      double lat,
      double lang,
      String langId,
      String mobileNumber});
}

/// @nodoc
class __$$_LoginResponseModelCopyWithImpl<$Res>
    extends _$LoginResponseModelCopyWithImpl<$Res, _$_LoginResponseModel>
    implements _$$_LoginResponseModelCopyWith<$Res> {
  __$$_LoginResponseModelCopyWithImpl(
      _$_LoginResponseModel _value, $Res Function(_$_LoginResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? name = null,
    Object? email = null,
    Object? intrestList = null,
    Object? lat = null,
    Object? lang = null,
    Object? langId = null,
    Object? mobileNumber = null,
  }) {
    return _then(_$_LoginResponseModel(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      intrestList: null == intrestList
          ? _value._intrestList
          : intrestList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as double,
      langId: null == langId
          ? _value.langId
          : langId // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LoginResponseModel extends _LoginResponseModel {
  const _$_LoginResponseModel(
      {required this.accessToken,
      required this.name,
      required this.email,
      required final List<dynamic> intrestList,
      required this.lat,
      required this.lang,
      required this.langId,
      required this.mobileNumber})
      : _intrestList = intrestList,
        super._();

  factory _$_LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResponseModelFromJson(json);

  @override
  final String accessToken;
  @override
  final String name;
  @override
  final String email;
  final List<dynamic> _intrestList;
  @override
  List<dynamic> get intrestList {
    if (_intrestList is EqualUnmodifiableListView) return _intrestList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_intrestList);
  }

  @override
  final double lat;
  @override
  final double lang;
  @override
  final String langId;
  @override
  final String mobileNumber;

  @override
  String toString() {
    return 'LoginResponseModel(accessToken: $accessToken, name: $name, email: $email, intrestList: $intrestList, lat: $lat, lang: $lang, langId: $langId, mobileNumber: $mobileNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginResponseModel &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality()
                .equals(other._intrestList, _intrestList) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.langId, langId) || other.langId == langId) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      accessToken,
      name,
      email,
      const DeepCollectionEquality().hash(_intrestList),
      lat,
      lang,
      langId,
      mobileNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginResponseModelCopyWith<_$_LoginResponseModel> get copyWith =>
      __$$_LoginResponseModelCopyWithImpl<_$_LoginResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResponseModelToJson(
      this,
    );
  }
}

abstract class _LoginResponseModel extends LoginResponseModel {
  const factory _LoginResponseModel(
      {required final String accessToken,
      required final String name,
      required final String email,
      required final List<dynamic> intrestList,
      required final double lat,
      required final double lang,
      required final String langId,
      required final String mobileNumber}) = _$_LoginResponseModel;
  const _LoginResponseModel._() : super._();

  factory _LoginResponseModel.fromJson(Map<String, dynamic> json) =
      _$_LoginResponseModel.fromJson;

  @override
  String get accessToken;
  @override
  String get name;
  @override
  String get email;
  @override
  List<dynamic> get intrestList;
  @override
  double get lat;
  @override
  double get lang;
  @override
  String get langId;
  @override
  String get mobileNumber;
  @override
  @JsonKey(ignore: true)
  _$$_LoginResponseModelCopyWith<_$_LoginResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

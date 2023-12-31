// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
class LoginResponseModel with _$LoginResponseModel {
  @JsonSerializable(explicitToJson: true)
  const factory LoginResponseModel({
    required String accessToken,
    required String name,
    required String email,
    required List intrestList,
    required double lat,
    required double lang,
    required String langId,
    required String mobileNumber,
  }) = _LoginResponseModel;

  const LoginResponseModel._();

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

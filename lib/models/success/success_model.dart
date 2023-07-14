import 'package:freezed_annotation/freezed_annotation.dart';

part 'success_model.freezed.dart';
part 'success_model.g.dart';

@freezed
class SuccessModel with _$SuccessModel {
  const factory SuccessModel({required String message}) = _SuccessModel;

  factory SuccessModel.fromJson(Map<String, dynamic> json) =>
      _$SuccessModelFromJson(json);
}

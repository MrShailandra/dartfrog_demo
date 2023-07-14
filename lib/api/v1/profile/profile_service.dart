import 'package:auth_pro/api/v1/profile/profile_repository.dart';
import 'package:auth_pro/core/exceptions/exceptions.dart';
import 'package:auth_pro/models/failuer/failure_model.dart';
import 'package:auth_pro/models/user/user_model.dart';
import 'package:dartz/dartz.dart';

class ProfileService {
  ProfileService({required ProfileRepository profileRepository})
      : _profileRepository = profileRepository;

  final ProfileRepository _profileRepository;

  Future<Either<FailureModel, UserModel>> getUserProfile(
    String accessToken,
  ) async {
    try {
      final result = await _profileRepository.getUserProfile(accessToken);
      return right(result);
    } on NoUserFoundException catch (e) {
      return left(FailureModel(message: e.message));
    } on DatabaseConnectionException catch (e) {
      return left(FailureModel(message: e.message));
    } catch (_) {
      return left(const FailureModel(message: UnknownException.message));
    }
  }

  Future<Either<FailureModel, dynamic>> deleteUserProfile(
    String accessToken,
  ) async {
    try {
      final result = await _profileRepository.deleteUserProfile(accessToken);
      return right(result);
    } on NoUserFoundException catch (e) {
      return left(FailureModel(message: e.message));
    } on DatabaseConnectionException catch (e) {
      return left(FailureModel(message: e.message));
    } catch (_) {
      return left(const FailureModel(message: UnknownException.message));
    }
  }
}

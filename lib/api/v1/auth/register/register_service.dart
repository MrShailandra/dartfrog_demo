import 'package:auth_pro/api/v1/auth/register/register_repository.dart';
import 'package:auth_pro/core/exceptions/exceptions.dart';
import 'package:auth_pro/models/auth/login/login_response_model.dart';
import 'package:auth_pro/models/auth/register/register_request_model.dart';
import 'package:auth_pro/models/failuer/failure_model.dart';
import 'package:dartz/dartz.dart';

class RegisterService {
  RegisterService({required RegisterRepository registerRepository})
      : _registerRepository = registerRepository;

  final RegisterRepository _registerRepository;

  Future<Either<FailureModel, LoginResponseModel>> register(
    RegisterRequestModel request,
  ) async {
    try {
      final result = await _registerRepository.register(request);
      return right(result!);
    } on RequestNotvalid catch (e) {
      return left(FailureModel(message: e.messege.toString()));
    } on UserExistsException catch (e) {
      return left(FailureModel(message: e.message));
    } on DataInsertException catch (e) {
      return left(FailureModel(message: e.message));
    } on DatabaseConnectionException catch (e) {
      return left(FailureModel(message: e.message));
    } catch (_) {
      return left(const FailureModel(message: UnknownException.message));
    }
  }
}

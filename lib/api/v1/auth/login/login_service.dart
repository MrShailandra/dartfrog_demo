import 'package:auth_pro/api/v1/auth/login/login_repo.dart';
import 'package:auth_pro/core/exceptions/exceptions.dart';
import 'package:auth_pro/models/auth/login/login_request_model.dart';
import 'package:auth_pro/models/auth/login/login_response_model.dart';
import 'package:auth_pro/models/failuer/failure_model.dart';
import 'package:dartz/dartz.dart';

class LoginService {
  LoginService({required LoginRepository loginRepository})
      : _loginRepository = loginRepository;

  final LoginRepository _loginRepository;

  Future<Either<FailureModel, LoginResponseModel>> login(
    LoginRequestModel request,
  ) async {
    try {
      final user = await _loginRepository.login(request);
      return right(user);
    } on InvalidCredentialsException catch (e) {
      return left(FailureModel(message: e.message));
    } catch (_) {
      return left(const FailureModel(message: UnknownException.message));
    }
  }
}

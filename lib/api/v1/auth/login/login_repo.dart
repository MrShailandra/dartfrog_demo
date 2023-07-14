import 'package:auth_pro/core/constant/db_constants.dart';
import 'package:auth_pro/core/database/database.dart';
import 'package:auth_pro/core/exceptions/exceptions.dart';
import 'package:auth_pro/core/utils/jwt_utils.dart';
import 'package:auth_pro/core/utils/password_utils.dart';
import 'package:auth_pro/models/auth/login/login_request_model.dart';
import 'package:auth_pro/models/auth/login/login_response_model.dart';
import 'package:auth_pro/models/user/user_model.dart';
import 'package:mongo_dart/mongo_dart.dart';

class LoginRepository {
  LoginRepository({required DatabaseClient databaseClient})
      : _databaseClient = databaseClient;

  final DatabaseClient _databaseClient;

  Future<LoginResponseModel> login(LoginRequestModel request) async {
    try {
      if (_databaseClient.db != null && _databaseClient.db!.isConnected) {
        final userCollection =
            _databaseClient.db!.collection(DBConstants.usersCollection);
        final password = PasswordUtils.encryptPassword(request.password);
        // Check if the user credentials are valid or not.
        final userResponse = await userCollection.findOne(
          where.eq('email', request.email).and(where.eq('password', password)),
        );
        if (userResponse == null) {
          throw InvalidCredentialsException();
        } else {
          // If the credentials are correct generate access and then return LoginResponseModel
          final user = UserModel.fromJson(userResponse);

          final accessToken = JWTUtils.generateAccessToken(userId: user.userId);

          final loginResponseModel = LoginResponseModel(
            email: user.email,
            intrestList: user.intrested_topic,
            lang: user.lang,
            langId: user.lang_id,
            lat: user.lat,
            mobileNumber: user.mobileNo,
            name: user.name,
            accessToken: accessToken,
          );

          return loginResponseModel;
        }
      } else {
        throw DatabaseConnectionException();
      }
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}

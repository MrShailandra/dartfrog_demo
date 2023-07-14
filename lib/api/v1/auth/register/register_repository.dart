import 'package:auth_pro/core/constant/db_constants.dart';
import 'package:auth_pro/core/database/database.dart';
import 'package:auth_pro/core/exceptions/exceptions.dart';
import 'package:auth_pro/core/utils/jwt_utils.dart';
import 'package:auth_pro/core/utils/password_utils.dart';
import 'package:auth_pro/core/utils/user_id_util.dart';
import 'package:auth_pro/models/auth/login/login_response_model.dart';
import 'package:auth_pro/models/auth/register/register_request_model.dart';
import 'package:auth_pro/models/user/user_model.dart';
import 'package:mongo_dart/mongo_dart.dart';

// ignore: public_member_api_docs
class RegisterRepository {
  // ignore: public_member_api_docs
  RegisterRepository({required DatabaseClient databaseClient})
      : _databaseClient = databaseClient;

  final DatabaseClient _databaseClient;

  Future<LoginResponseModel?> register(RegisterRequestModel request) async {
    try {
      print(request);
      if (_databaseClient.db != null && _databaseClient.db!.isConnected) {
        final userCollection =
            _databaseClient.db!.collection(DBConstants.usersCollection);
        // check if the user already registered
        final user =
            await userCollection.findOne(where.eq('email', request.email));
        if (user != null) {
          throw UserExistsException();
        } else {
          print(request.interestedTopic);
          if (request.name == null) {
            throw RequestNotvalid(messege: 'Please Enter Name');
          } else if (request.interestedTopic == null) {
            throw RequestNotvalid(messege: 'Please Enter valid Intrest Topic');
          } else if (request.lang == null || request.lat == null) {
            throw RequestNotvalid(messege: 'Please Enter valid lat and lang');
          } else if (request.mobileNo == null) {
            throw RequestNotvalid(messege: 'Please Enter valid Phone number');
          } else {
            // if it is not registered encrypt the password and insert it to the users table
            final userModel = UserModel(
              name: request.name!,
              intrested_topic: request.interestedTopic!,
              lang: request.lang!,
              lang_id: request.languageId!,
              lat: request.lat!,
              mobileNo: request.mobileNo!,
              userId: UserIDUtils.generateUserID(),
              email: request.email!,
              password: PasswordUtils.encryptPassword(request.password!),
            );

            final response = await userCollection.insertOne(userModel.toJson());
            if (response.isSuccess) {
              final userResponse = await userCollection.findOne(
                where.eq('email', request.email).and(
                      where.eq(
                        'password',
                        PasswordUtils.encryptPassword(request.password!),
                      ),
                    ),
              );
              if (userResponse != null) {
                final user = UserModel.fromJson(userResponse);
                final accessToken =
                    JWTUtils.generateAccessToken(userId: user.userId);

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
              throw DataInsertException();
            }
          }
        }
      } else {
        throw DatabaseConnectionException();
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }
}

import 'package:auth_pro/core/constant/db_constants.dart';
import 'package:auth_pro/core/database/database.dart';
import 'package:auth_pro/core/exceptions/exceptions.dart';
import 'package:auth_pro/core/utils/jwt_utils.dart';
import 'package:auth_pro/models/user/user_model.dart';
import 'package:mongo_dart/mongo_dart.dart';

class ProfileRepository {
  ProfileRepository({required DatabaseClient databaseClient})
      : _databaseClient = databaseClient;

  final DatabaseClient _databaseClient;

  Future<UserModel> getUserProfile(String accessToken) async {
    try {
      final userId = JWTUtils.getUserIdFromToken(accessToken: accessToken);

      if (_databaseClient.db != null && _databaseClient.db!.isConnected) {
        final userCollection =
            _databaseClient.db!.collection(DBConstants.usersCollection);
        // check if the user exists with given credentials
        final user = await userCollection.findOne(where.eq('userId', userId));
        if (user == null) {
          throw NoUserFoundException();
        } else {
          final userModel = UserModel.fromJson(user);
          return userModel;
        }
      } else {
        throw DatabaseConnectionException();
      }
    } catch (e) {
      rethrow;
    }
  }

  Future deleteUserProfile(String accessToken) async {
    try {
      final userId = JWTUtils.getUserIdFromToken(accessToken: accessToken);

      if (_databaseClient.db != null && _databaseClient.db!.isConnected) {
        final userCollection =
            _databaseClient.db!.collection(DBConstants.usersCollection);
        // check if the user exists with given credentials
        final user = await userCollection.findOne(where.eq('userId', userId));
        if (user == null) {
          throw NoUserFoundException();
        } else {
          final data =
              await userCollection.deleteOne(where.eq('userId', userId));
          return data.id;
        }
      } else {
        throw DatabaseConnectionException();
      }
    } catch (e) {
      rethrow;
    }
  }
}

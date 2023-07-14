import 'package:auth_pro/core/constant/jwt_constant.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

abstract class JWTUtils {
  static String generateAccessToken({required String userId}) {
    final jwt = JWT({
      'userId': userId,
    });

    return jwt.sign(
      SecretKey(JWTConstants.accesssTokenSecretKey),
      expiresIn: const Duration(days: 30),
    );
  }

  static bool verifyAccessToken({required String accessToken}) {
    try {
      JWT.verify(accessToken, SecretKey(JWTConstants.accesssTokenSecretKey));
      return true;
    } catch (_) {
      return false;
    }
  }

  static String getUserIdFromToken({required String accessToken}) {
    final jwt = JWT.decode(accessToken);
    // ignore: avoid_dynamic_calls
    return jwt.payload['userId'] as String;
  }
}

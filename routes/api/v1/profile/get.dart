import 'dart:io';
import 'package:auth_pro/api/v1/profile/profile_service.dart';
import 'package:auth_pro/core/utils/jwt_utils.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.get) {
    return Response.json(
      statusCode: HttpStatus.methodNotAllowed,
      body: {'msg': 'Method not Allowed'},
    );
  } else {
    return _getUserProfile(context);
  }
}

Future<Response> _getUserProfile(RequestContext context) async {
  final profileService = context.read<ProfileService>();

  final accessToken = context.request.headers['Authorization']?.split(' ').last;
  if (accessToken != null &&
      JWTUtils.verifyAccessToken(accessToken: accessToken)) {
    final response = await profileService.getUserProfile(accessToken);
    // Return code 500 if an exception is caught.
    return response.fold(
      (error) => Response.json(
        statusCode: HttpStatus.internalServerError,
        body: error.toJson(),
      ),
      // Return code 200, user information if everthing is fine.
      (success) => Response.json(
        body: success.toJson(),
      ),
    );
  } else {
    // Return code 401 if token is invalid or null
    return Response.json(
      statusCode: HttpStatus.unauthorized,
      body: {'msg': 'Unauthorized access'},
    );
  }
}

Future<Response> _deleteUserProfile(RequestContext context) async {
  final profileService = context.read<ProfileService>();

  final accessToken = context.request.headers['Authorization']?.split(' ').last;
  if (accessToken != null &&
      JWTUtils.verifyAccessToken(accessToken: accessToken)) {
    final response = await profileService.deleteUserProfile(accessToken);
    // Return code 500 if an exception is caught.
    return response.fold(
      (error) => Response.json(
        statusCode: HttpStatus.internalServerError,
        body: error.toJson(),
      ),
      // Return code 200, user information if everthing is fine.
      (success) => Response.json(
        body: success,
      ),
    );
  } else {
    // Return code 401 if token is invalid or null
    return Response.json(
      statusCode: HttpStatus.unauthorized,
      body: {'msg': 'Unauthorized access'},
    );
  }
}

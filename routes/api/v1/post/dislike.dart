import 'dart:io';

import 'package:auth_pro/api/v1/post/post_service.dart';
import 'package:auth_pro/core/utils/jwt_utils.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  } else {
    return _disLike(context);
  }
}

Future<Response> _disLike(RequestContext context) async {
  final registerService = context.read<PostService>();
  final accessToken = context.request.headers['Authorization']?.split(' ').last;
  if (accessToken != null &&
      JWTUtils.verifyAccessToken(accessToken: accessToken)) {
    final data = await context.request.formData();

    final registerResponse = await registerService.addLike(
      accessToken,
      "${data['id']}",
      1,
    );
    // Return code 500 if an exception is caught.
    return registerResponse.fold(
      (error) => Response.json(
        statusCode: HttpStatus.internalServerError,
        body: error.toJson(),
      ),
      // Return code 201 if everything is fine.
      (created) => Response.json(
        statusCode: HttpStatus.created,
        body: {'messege': created},
      ),
    );
  } else {
    return Response.json(
      statusCode: HttpStatus.unauthorized,
      body: {'msg': 'Unauthorized access'},
    );
  }
}

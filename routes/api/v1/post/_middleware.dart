import 'package:auth_pro/api/v1/post/post_repository.dart';
import 'package:auth_pro/api/v1/post/post_service.dart';
import 'package:auth_pro/core/database/database.dart';

import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return handler
      .use(
        postServiceProvider(),
      )
      .use(
        postRepositoryProvider(),
      );
}

Middleware postRepositoryProvider() {
  return provider<PostRepository>(
    (context) => PostRepository(
      databaseClient: context.read<DatabaseClient>(),
    ),
  );
}

Middleware postServiceProvider() {
  return provider<PostService>(
    (context) => PostService(
      postRepository: context.read<PostRepository>(),
    ),
  );
}

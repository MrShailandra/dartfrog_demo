import 'package:auth_pro/api/v1/category/cat_repository.dart';
import 'package:auth_pro/api/v1/category/cat_service.dart';
import 'package:auth_pro/core/database/database.dart';

import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return handler
      .use(
        catServiceProvider(),
      )
      .use(
        catRepositoryProvider(),
      );
}

Middleware catRepositoryProvider() {
  return provider<CatRepository>(
    (context) => CatRepository(
      databaseClient: context.read<DatabaseClient>(),
    ),
  );
}

Middleware catServiceProvider() {
  return provider<CatService>(
    (context) => CatService(
      catRepository: context.read<CatRepository>(),
    ),
  );
}

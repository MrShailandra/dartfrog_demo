import 'package:auth_pro/api/v1/lang_cat/lang_repository.dart';
import 'package:auth_pro/api/v1/lang_cat/lang_service.dart';
import 'package:auth_pro/core/database/database.dart';

import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return handler
      .use(
        langServiceProvider(),
      )
      .use(
        langRepositoryProvider(),
      );
}

Middleware langRepositoryProvider() {
  return provider<LangRepository>(
    (context) => LangRepository(
      databaseClient: context.read<DatabaseClient>(),
    ),
  );
}

Middleware langServiceProvider() {
  return provider<LangService>(
    (context) => LangService(
      langRepository: context.read<LangRepository>(),
    ),
  );
}

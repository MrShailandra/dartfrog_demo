import 'package:auth_pro/api/v1/auth/login/login_repo.dart';
import 'package:auth_pro/api/v1/auth/login/login_service.dart';
import 'package:auth_pro/core/database/database.dart';

import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return handler.use(loginServiceProvider()).use(loginRepositoryProvider());
}

Middleware loginRepositoryProvider() {
  return provider<LoginRepository>(
    (context) => LoginRepository(
      databaseClient: context.read<DatabaseClient>(),
    ),
  );
}

Middleware loginServiceProvider() {
  return provider<LoginService>(
    (context) => LoginService(
      loginRepository: context.read<LoginRepository>(),
    ),
  );
}

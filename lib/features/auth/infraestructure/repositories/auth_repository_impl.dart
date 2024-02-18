import 'package:kateil/features/auth/domain/domain.dart';

import '../infraestructure.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthDataSource dataSource;

  AuthRepositoryImpl({AuthDataSource? dataSource})
      : dataSource = dataSource ?? AuthDataSourceImpl();

  @override
  Future<KUser> checkAuthStatus(String token) {
    return dataSource.checkAuthStatus(token);
  }

  @override
  Future<KUser> login(String email, String password) {
    return dataSource.login(email, password);
  }

  @override
  Future<KUser> register(String email, String password, String fullName) {
    return dataSource.register(email, password, fullName);
  }
}

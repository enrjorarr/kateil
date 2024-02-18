import '../domain.dart';

abstract class AuthDataSource {
  Future<KUser> login(String email, String password);
  Future<KUser> register(String email, String password, String fullName);
  Future<KUser> checkAuthStatus(String token);

}

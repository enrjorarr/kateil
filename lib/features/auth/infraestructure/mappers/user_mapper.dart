import 'package:kateil/features/auth/domain/domain.dart';

class UserMapper {

  static KUser userJsonToEntity(Map<String, dynamic> json, String id, String token) => 
  KUser(
    id: id, 
    email: json['email'], 
    fullName: json['fullName'], 
    roles: List<String>.from(json['roles'].map((role)=> role)),
    token: token);
}
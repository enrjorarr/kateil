import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kateil/features/auth/infraestructure/infraestructure.dart';

import '../../domain/domain.dart';

class AuthDataSourceImpl extends AuthDataSource {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<KUser> checkAuthStatus(String token) async{
    try {

      User? user = _auth.currentUser;
      
      // Usuario autenticado, ahora puedes acceder a los datos en Firestore.
      String userId = user!.uid;
      // Acceder al token de acceso
      String? token = await user.getIdToken();

      DocumentSnapshot userDoc =
          await _firestore.collection('users').doc(userId).get();

      final kUser = UserMapper.userJsonToEntity(
          userDoc.data() as Map<String, dynamic>, userId, token!);

      return kUser;
          
    } catch (e) {
      throw WrongCredentials();
    }
  }

  @override
  Future<KUser> login(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = userCredential.user;

      // Usuario autenticado, ahora puedes acceder a los datos en Firestore.
      String userId = userCredential.user!.uid;
      // Acceder al token de acceso
      String? token = await user!.getIdToken();

      DocumentSnapshot userDoc =
          await _firestore.collection('users').doc(userId).get();

      final kUser = UserMapper.userJsonToEntity(
          userDoc.data() as Map<String, dynamic>, userId, token!);

      return kUser;
    } catch (e) {
      throw WrongCredentials();
    }
  }

  @override
  Future<KUser> register(String email, String password, String fullName) {
    // TODO: implement register
    throw UnimplementedError();
  }
}

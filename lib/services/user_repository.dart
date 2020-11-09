
import 'package:firebase_auth/firebase_auth.dart';

abstract class BaseRepository{
  Future<String> signIn(String username, String Password);

  Future<String> signOut();
}

class UserRepository extends BaseRepository{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<String> signIn(String username, String Password) {
    return null;
  }

  //TODO login with google sign in

  @override
  Future<String> signOut() {
    return null;
  }
}
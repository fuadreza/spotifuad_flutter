import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class BaseRepository {
  Stream<User> user();

  Future<String> signIn(String username, String Password);

  Future<String> signInWithGoogle();

  Future<String> signOut();

  void dispose();
}

class UserRepository extends BaseRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  StreamController<User> _user = StreamController<User>();

  @override
  Stream<User> user() => _user.stream;

  @override
  Future<String> signIn(String username, String Password) {
    return null;
  }

  @override
  Future<String> signInWithGoogle() async {
    try {
      final GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth = await googleSignInAccount.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);
      var userLogin = (await _firebaseAuth.signInWithCredential(credential)).user;
      _user.add(userLogin);
    } catch (e) {
      print(e);
    }
    return 'Logged in';
  }

  @override
  Future<String> signOut() {
    return null;
  }

  @override
  void dispose() {
    _user.close();
  }
}

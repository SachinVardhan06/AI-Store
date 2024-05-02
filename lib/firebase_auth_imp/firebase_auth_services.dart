
import 'package:firebase_auth/firebase_auth.dart';


class FirebaseAuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signupwithemailandpass(String email,String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } catch (e) {
      print("Some error Occured");
    }
    return null;
  }

  Future<User?> signinwithemailandpass(String email,String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } catch (e) {
      print("Some error Occured");
    }
    return null;
  }
}
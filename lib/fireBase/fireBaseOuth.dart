import 'package:firebase_auth/firebase_auth.dart';

class FireBaseOuthController {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  void signUp({required String email , required String password}) {
    // عن طريق الouth حنعمل انشاء حساب عن طريق البريد و كلمة السر
    _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
  }
}

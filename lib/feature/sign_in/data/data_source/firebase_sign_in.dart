import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseSignIn {
  Future<Either<String, String>> signIn(
      {required String email, required String password});
}

class FirebaseSignInImplemntation extends FirebaseSignIn {
  @override
  Future<Either<String, String>> signIn(
      {required String email, required String password}) async {
    try {
      final responce = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      if (responce.user!.emailVerified) {
        return left('Sign In SuccessFul');
      } else {
        await FirebaseAuth.instance.currentUser!.sendEmailVerification();
        return right('Please Vefiy Email');
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        return right('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        return right('Wrong password provided for that user.');
      } else {
        print(e.message.toString());
        return right(e.message!);
      }
    }
  }
}

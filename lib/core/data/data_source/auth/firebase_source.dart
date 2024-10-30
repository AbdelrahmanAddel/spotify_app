import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_app/core/data/model/auth/authentication_model.dart';

abstract class FireBaseAuth{
  Future<Either>signIn(AuthenticationModel authenticationModel);
  Future<Either>signUp(AuthenticationModel authenticationModel);

}
class FireBaseAuthImplemnt extends FireBaseAuth {
  @override
  Future<Either> signIn(AuthenticationModel authenticationModel) async{
try {
 await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: authenticationModel.email,
    password: authenticationModel.password
  );
  return const Right('Sign In Successfuly !');
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
    return const Left('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
    return const Left('Wrong password provided for that user.');
  }
  else {
    return Left(e.message);
  }
}
  }

  @override
  Future<Either> signUp(AuthenticationModel authenticationModel) async{
try {
await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: authenticationModel.email,
    password: authenticationModel.password ,
  );
  return const Right('Sign Up Successfuly !');

} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    // ignore: avoid_print
    ('The password provided is too weak.');
    return const Left('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
    return const Left('The account already exists for that email.');
  }
  else{
    return Left(e.message);
  }
} catch (e) {
  print(e);
    return Left(e.toString());

}
  }

}
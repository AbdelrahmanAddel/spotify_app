import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:for_test/feature/register/data/model/user_data_model.dart';

abstract class FirebaseRegister {
  Future<Either<String, String>> register(
      {required String emailAddress, required String password});
  Future<void> saveUserData({required String fullName, required String email});
}

class FirebaseRegisterImplmentation extends FirebaseRegister {
  @override
  Future<Either<String, String>> register(
      {required String emailAddress, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );

      credential.user!.sendEmailVerification();

      return const Left(
          'Create Account Succeefuly ,Please Check Your Mail To Verified');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return const Right('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        return const Right('The account already exists for that email.');
      } else {
        return Right(e.message!);
      }
    } catch (e) {
      return Right(e.toString());
    }
  }

  @override
  Future<void> saveUserData(
      {required String fullName, required String email}) async {
    final userData = UserDataModel.toJson(email: email, fullName: fullName);
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    await users.doc(FirebaseAuth.instance.currentUser!.uid).set(userData);
  }
}

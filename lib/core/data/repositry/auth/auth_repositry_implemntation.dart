import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/data/data_source/auth/firebase_source.dart';
import 'package:spotify_app/core/domain/repositry/auth/auth.dart';
import 'package:spotify_app/core/service_locator.dart';

import '../../model/auth/authentication_model.dart';

class AuthRepositryImplemntation  extends AuthRepositry{
 

  @override
  Future<Either> signIn(AuthenticationModel authenticationMode)async {
   return await sl<FireBaseAuth>().signIn(authenticationMode);

  } 

  @override
  Future<Either> signUp(AuthenticationModel authenticationModel) async {
   return  await sl<FireBaseAuth>().signUp(authenticationModel); 
     

  }

}
import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/data/model/auth/authentication_model.dart';

abstract class  AuthRepositry {
  Future<Either>signIn(AuthenticationModel authenticationMode);
  Future<Either>signUp(AuthenticationModel authenticationModel);


}
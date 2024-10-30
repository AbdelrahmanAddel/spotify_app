import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/service_locator.dart';
import 'package:spotify_app/usecase/usecase.dart';

import '../../../data/model/auth/authentication_model.dart';
import '../../repositry/auth/auth.dart';

class SignInUserCase implements UseCase<Either,AuthenticationModel>{
  @override
  Future<Either>call({required param}) async{
   return await sl<AuthRepositry>().signIn(param);

    

  }
}

import 'package:spotify_app/core/data/model/auth/authentication_model.dart';
import 'package:spotify_app/usecase/usecase.dart';
import 'package:dartz/dartz.dart';

import '../../../service_locator.dart';
import '../../repositry/auth/auth.dart';
class SignUpUseCase implements UseCase<Either,AuthenticationModel> {
  @override
  Future<Either> call({required AuthenticationModel param})async {
    return  sl<AuthRepositry>().signUp (param);

  }

  



}
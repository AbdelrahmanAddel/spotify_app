import 'package:get_it/get_it.dart';
import 'package:spotify_app/core/data/data_source/auth/firebase_source.dart';
import 'package:spotify_app/core/data/repositry/auth/auth_repositry_implemntation.dart';
import 'package:spotify_app/core/domain/repositry/auth/auth.dart';
import 'package:spotify_app/core/domain/usescase/auth/sign_in.dart';
import 'package:spotify_app/core/domain/usescase/auth/sign_up.dart';
final sl=GetIt.instance;
Future <void> slInti()async {
   sl.registerSingleton<FireBaseAuth>(FireBaseAuthImplemnt());
   sl.registerSingleton<AuthRepositry>(AuthRepositryImplemntation());
   sl.registerSingleton<SignUpUseCase>(SignUpUseCase());
   sl.registerSingleton<SignInUserCase>(SignInUserCase());


}
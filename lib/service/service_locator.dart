import 'package:for_test/feature/home/data/data_source/firebase_song_details.dart';
import 'package:for_test/feature/home/data/reposity/get_song_details_implementation.dart';
import 'package:for_test/feature/home/domain/repositry/get_song_details.dart';
import 'package:for_test/feature/profle/data/data_source/firebase_get_profle.dart';
import 'package:for_test/feature/profle/data/repositiry/profile_repo_implementation.dart';
import 'package:for_test/feature/profle/domain/repositiry/profile_reposity.dart';
import 'package:for_test/feature/profle/domain/usecase/profile_usecase.dart';
import 'package:for_test/feature/register/data/data_source/firebase_register.dart';
import 'package:for_test/feature/register/data/repositry/register_repositry_implmentation.dart';
import 'package:for_test/feature/register/domain/repositry/register_repositry.dart';
import 'package:for_test/feature/register/domain/usecase/register_usercase.dart';
import 'package:for_test/feature/sign_in/data/data_source/firebase_sign_in.dart';
import 'package:for_test/feature/sign_in/data/repositry/sign_in_repositry.dart';
import 'package:for_test/feature/sign_in/domain/repositry/sign_in_repositry.dart';
import 'package:for_test/feature/sign_in/domain/usecase/sign_in_usecase.dart';
import 'package:get_it/get_it.dart';

import '../feature/home/domain/usecase/get_song_use_case.dart';
import '../feature/register/domain/usecase/save_user_data_usecase.dart';

final sl = GetIt.instance;
Future<void> slInit() async {
  //! Register
  sl.registerSingleton<RegisterRepositry>(RegisterRepositryImplmentation());
  sl.registerSingleton<FirebaseRegister>(FirebaseRegisterImplmentation());
  sl.registerSingleton(RegisterUsecase());
  sl.registerSingleton(SaveUserDataUsecase());

  //! Sign IN
  sl.registerSingleton<SignInRepositry>(SignInRepositryImplmentation());
  sl.registerSingleton<FirebaseSignIn>(FirebaseSignInImplemntation());
  sl.registerSingleton(SignInUsecase());

  //! SongDetails
  sl.registerSingleton<SongDetailsRepositry>(SongDetailsRepoImplementation());
  sl.registerSingleton<FirebaseSongDetails>(FirebaseSongDetailsImple());
  sl.registerSingleton(GetSongUseCase());

  //! GetProfile
  sl.registerSingleton<ProfileReposity>(ProfileRepoImplementation());
  sl.registerSingleton<FirebaseGetProfle>(FirebaseGetProfleImple());
  sl.registerSingleton(ProfileUsecase());
}

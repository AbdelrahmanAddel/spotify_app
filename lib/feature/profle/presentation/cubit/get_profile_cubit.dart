import 'package:bloc/bloc.dart';
import 'package:for_test/feature/profle/data/model/profile_model.dart';
import 'package:for_test/feature/profle/domain/usecase/profile_usecase.dart';
import 'package:for_test/service/service_locator.dart';
import 'package:meta/meta.dart';

part 'get_profile_state.dart';

class GetProfileCubit extends Cubit<GetProfileState> {
  GetProfileCubit() : super(GetProfileInitial());
  getProfileData() async {
    try {
      emit(LoadingToGetProfileData());
      final result = await sl<ProfileUsecase>().call();
      result.fold(
          (profileData) =>
              emit(GetProfileDataSuccess(profileModel: profileData)),
          (error) => emit(FailerToGetProfileData(errorMessage: error)));
    } on Exception catch (e) {
      emit(FailerToGetProfileData(errorMessage: e.toString()));
    }
  }
}

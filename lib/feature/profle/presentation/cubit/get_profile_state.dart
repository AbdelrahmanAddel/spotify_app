part of 'get_profile_cubit.dart';

@immutable
sealed class GetProfileState {}

final class GetProfileInitial extends GetProfileState {}

final class LoadingToGetProfileData extends GetProfileState {}

final class GetProfileDataSuccess extends GetProfileState {
  final ProfileModel profileModel;

  GetProfileDataSuccess({required this.profileModel});
}

final class FailerToGetProfileData extends GetProfileState {
  final String errorMessage;

  FailerToGetProfileData({required this.errorMessage});
}

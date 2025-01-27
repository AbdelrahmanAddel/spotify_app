import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:for_test/constants/app_strings.dart';
import 'package:for_test/constants/app_text_style.dart';

import 'package:for_test/feature/profle/presentation/cubit/get_profile_cubit.dart';

import '../../../../constants/colors.dart';
import '../widget/profile_container.dart';
import 'profile_favourite_list.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackGround,
      body: BlocProvider(
        create: (context) => GetProfileCubit()..getProfileData(),
        child: BlocBuilder<GetProfileCubit, GetProfileState>(
          builder: (context, state) {
            return Column(
              children: [
                profileContainer(state: state),
                const SizedBox(
                  height: 19,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AppStrings.publicPlayList,
                        style: AppTextStyle.satoshiBold15,
                      )),
                ),
                const Expanded(child: ProfileFavouritesList())
              ],
            );
          },
        ),
      ),
    );
  }
}

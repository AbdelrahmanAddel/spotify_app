import 'package:flutter/material.dart';
import 'package:for_test/common/widget/custom_circle_progress_indicator.dart';
import 'package:for_test/constants/app_text_style.dart';
import 'package:for_test/feature/profle/presentation/cubit/get_profile_cubit.dart';

import '../../../../constants/colors.dart';
import '../widget/profile_container_appbar.dart';

class ProfileContainerContent extends StatelessWidget {
  const ProfileContainerContent({
    super.key,
    required this.state,
  });
  final GetProfileState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 38.0),
          child: profileContainerAppBar(context: context),
        ),
        if (state is GetProfileDataSuccess) ...[
          const CircleAvatar(
            backgroundColor: AppColors.e8787,
            radius: 35,
            child: Icon(
              Icons.person,
              size: 50,
              color: AppColors.f2F2F2,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            (state as GetProfileDataSuccess).profileModel.email,
            style: AppTextStyle.satoshiRegualar12
                .copyWith(color: AppColors.d8D4D4),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            (state as GetProfileDataSuccess).profileModel.fullName,
            style: AppTextStyle.satoshiBold20.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    '999',
                    style: AppTextStyle.satoshiBold20
                        .copyWith(color: Colors.white),
                  ),
                  const Text(
                    'Followers',
                    style: AppTextStyle.satoshiRegualar14,
                  )
                ],
              ),
              const SizedBox(
                width: 123,
              ),
              Column(
                children: [
                  Text(
                    '999',
                    style: AppTextStyle.satoshiBold20
                        .copyWith(color: Colors.white),
                  ),
                  const Text(
                    'Following',
                    style: AppTextStyle.satoshiRegualar14,
                  )
                ],
              ),
            ],
          )
        ] else if (state is LoadingToGetProfileData) ...[
          customCircleProgressIndicator(),
        ] else if (state is FailerToGetProfileData) ...[
          Text((state as FailerToGetProfileData).errorMessage)
        ]
      ],
    );
  }
}

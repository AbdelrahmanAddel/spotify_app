import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../cubit/get_profile_cubit.dart';
import '../view/profile_container_content.dart';

Widget profileContainer({required GetProfileState state}) {
  return Container(
    height: 350,
    decoration: const BoxDecoration(
        color: AppColors.e2C2B2B,
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(70), bottomLeft: Radius.circular(70))),
    child: ProfileContainerContent(
      state: state,
    ),
  );
}

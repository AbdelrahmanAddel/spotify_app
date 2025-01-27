import 'package:flutter/material.dart';
import 'package:for_test/constants/colors.dart';

import '../../../../common/widget/custom_or_line.dart';
import '../../../../common/widget/custom_other_authentication.dart';
import '../sections/app_bar_section.dart';
import '../sections/not_member_section.dart';
import '../sections/sign_in_body_section.dart';
import '../sections/sign_in_text_section.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackGround,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27.0),
                child: appBarSection(),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 80,
              ),
            ),
            SliverToBoxAdapter(
              child: signInTextsSection(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 38,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: signInBodySection(),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 31,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 33.0),
                child: orLine(),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 44,
              ),
            ),
            SliverToBoxAdapter(
              child: otherAuthentication(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 57,
              ),
            ),
            SliverToBoxAdapter(child: notAMemberSection(context: context)),
          ],
        ),
      ),
    );
  }
}

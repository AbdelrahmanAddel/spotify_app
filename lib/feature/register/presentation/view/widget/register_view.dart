import 'package:flutter/material.dart';
import 'package:for_test/constants/colors.dart';

import '../../../../../common/widget/custom_or_line.dart';
import '../../../../../common/widget/custom_other_authentication.dart';
import '../../../../sign_in/presentation/sections/app_bar_section.dart';
import '../../sections/register_body_section.dart';
import '../../sections/register_text_sections.dart';
import 'do_you_have_an_account.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
                height: 47,
              ),
            ),
            SliverToBoxAdapter(
              child: registerViewSection(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 22,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: registerBodySection(),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 39,
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
                height: 31,
              ),
            ),
            SliverToBoxAdapter(child: doYouHaveAnAccount(context: context)),
          ],
        ),
      ),
    );
  }
}

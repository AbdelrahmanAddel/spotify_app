import 'package:flutter/material.dart';

import 'widget/get_start_back_ground_image.dart';
import 'widget/get_start_content.dart';
import 'widget/get_strat_view_gradient.dart';


class GetStartView extends StatelessWidget {
  const GetStartView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Stack(
      children: [
       GetStartViewBackGroundImage(),
       GetStratViewGradient(),
       GetStartContent()
      ],
    );
  }
}




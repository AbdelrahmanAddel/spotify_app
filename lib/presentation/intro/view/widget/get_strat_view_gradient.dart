import 'package:flutter/material.dart';

class GetStratViewGradient extends StatelessWidget {

  const GetStratViewGradient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentDirectional.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xff000000).withOpacity(0.7),
            const Color(0xff000000).withOpacity(0.7),
          ],
        ),
      ),
    );
  }
}
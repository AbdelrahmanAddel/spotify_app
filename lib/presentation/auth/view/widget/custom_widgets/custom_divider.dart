import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
   required this.dividerText
  });
final String dividerText;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Expanded(
          child: Divider(
            color: Colors.white,
            thickness: 0.5,
            endIndent: 0,
          ),
        ),
        Text(dividerText),
        const Expanded(
          child: Divider(
            color: Colors.white,
            thickness: 0.5,
          ),
        ),
      ],
    );
  }
}
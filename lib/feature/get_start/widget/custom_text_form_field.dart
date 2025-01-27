import 'package:flutter/material.dart';

import '../../../core/constants/app_text_style.dart';

Widget customTextFormField({
  TextEditingController? controller,
  required String hintText,
  bool? obscureText,
  Widget? suffixIcon,
}) {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'This Field Is Required';
      } 
        return null;
      
    },
    obscureText: obscureText ?? false,
    controller: controller,
    style: AppTextStyle.satoshiBold22.copyWith(fontSize: 16),
    decoration: InputDecoration(
      suffixIcon: suffixIcon,
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(color: Colors.white, width: 0.2)),
      fillColor: Colors.white,
      hintText: hintText,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.green, width: 100),
          borderRadius: BorderRadius.circular(30)),
    ),
  );
}

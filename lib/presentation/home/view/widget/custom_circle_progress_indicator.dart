import 'package:flutter/material.dart';

Widget CustomCircularProgressIndicator() {
  return Row(
    children: [
      Expanded(
        child: CircularProgressIndicator(
          strokeWidth: 30,
          color: Colors.green,
        ),
      ),
    ],
  );
}

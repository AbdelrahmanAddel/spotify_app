import 'package:flutter/material.dart';

Widget customPlayIcon({double? x, double? y, double? z}) {
  return Container(
    width: 35,
    height: 35,
    transform: Matrix4.translationValues(x ?? 10, y ?? 10, z ?? 0),
    decoration: BoxDecoration(color: Color(0xff2C2C2C), shape: BoxShape.circle),
    child: Icon(
      Icons.play_arrow,
      color: Color(0xff959595),
    ),
  );
}

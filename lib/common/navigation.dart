import 'package:flutter/material.dart';

class Navigation {
  static void push({required BuildContext context ,required Widget screen}){
    Navigator.push(context, MaterialPageRoute(builder: (builder)=>screen));
  }
 static void pushAndReplacement({required BuildContext context ,required Widget screen}){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder)=>screen));
  }
 static void pop({required BuildContext context}){
  Navigator.pop(context);
  }
}
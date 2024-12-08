import 'package:flutter/material.dart';
import 'package:spotify_app/theme/app_theme.dart';

import '../presentation/home/view/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      darkTheme: AppTheme.darkTheme,
  
      debugShowCheckedModeBanner: false,
      home:  HomeView(),
    );
  }
}

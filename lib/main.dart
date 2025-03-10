import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:for_test/core/database/cache_helper.dart';
import 'package:for_test/feature/splach_screen/view/splach_view.dart';
import 'package:for_test/service/service_locator.dart';

import 'feature/home/presentation/view/home_view.dart';

//TODO Add service Locator
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await slInit();
  await sl<CacheHelper>().init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplachView(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/presentation/auth/view/choose_auth_view.dart';
import 'package:spotify_app/presentation/auth/view/widget/view/sign_in_view.dart';
import 'package:spotify_app/presentation/auth/view/widget/view/sign_up_view.dart';
import 'package:spotify_app/presentation/choose_theme/cubit/theme_cubit.dart';
import 'package:spotify_app/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, state) {
          return MaterialApp(
            theme: AppTheme.darkTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: state ,
            debugShowCheckedModeBanner: false,
            home: const SignInView(),
          );
        },
      ),
    );
  }
}

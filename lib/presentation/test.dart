import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/presentation/home/cubit/new_song_cubit.dart';


class Test extends StatelessWidget {
  Test({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      
      create: (context) => NewSongCubit()..getSongs(),
      child: BlocBuilder<NewSongCubit, NewSongState>(
        builder: (context, state) {
    final cubit =BlocProvider.of<NewSongCubit>(context);

          return  Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                state is GetSongsSuccessful?
             Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(cubit.songCover[1]))
              ),
             ):
                CircularProgressIndicator()

              ],
            ),
          );
        },
      ),
    );
  }
}

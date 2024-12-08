import 'package:cloud_firestore/cloud_firestore.dart';

class SongEntity {
  final String artist;
  final double duration;
  final Timestamp releasedate;
  final String title;

  SongEntity({required this.artist, required this.duration, required this.releasedate, required this.title});

}
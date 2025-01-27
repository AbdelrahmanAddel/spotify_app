import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:for_test/core/constants/firebase_strings.dart';

class SongDetailsModel {
  final String artist;
  final String id;
  final String title;
  final double duration;
  final Timestamp releaseDate;

  SongDetailsModel(
      {required this.artist,
      required this.id,
      required this.title,
      required this.duration,
      required this.releaseDate});
  factory SongDetailsModel.fromJson(Map<String, dynamic> jsonData) {
    return SongDetailsModel(
        artist: jsonData[FirebaseStrings.artist],
        id: jsonData[FirebaseStrings.id],
        title: jsonData[FirebaseStrings.title],
        duration: jsonData[FirebaseStrings.duration],
        releaseDate: jsonData[FirebaseStrings.releaseData]);
  }
}

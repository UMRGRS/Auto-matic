import 'package:cloud_firestore/cloud_firestore.dart';

class CreateRealtimeResponse{
  final String? error;
  final DocumentReference? ref;

  CreateRealtimeResponse({this.error, this.ref});
}
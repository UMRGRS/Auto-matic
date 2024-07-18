import 'package:cloud_firestore/cloud_firestore.dart';

class CarData {
  final String uniqueCode, carVIN, carModel, carMake, carYear, userUID, alias;
  final DocumentReference reference;
  CarData({
    required this.alias,
    required this.reference,
    required this.userUID,
    required this.uniqueCode,
    required this.carVIN,
    required this.carModel,
    required this.carMake,
    required this.carYear,
  });

  Map<String, dynamic> toMap() {
    return {
      "alias": alias,
      "VIN": carVIN,
      "model": carModel,
      "make": carMake,
      "year": carYear,
      "realtime": reference,
      "userUID": userUID
    };
  }
}

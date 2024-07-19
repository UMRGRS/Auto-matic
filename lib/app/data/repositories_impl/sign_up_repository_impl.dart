import 'package:auto_matic/app/domain/inputs/car_data.dart';
import 'package:auto_matic/app/domain/inputs/sign_up_data.dart';
import 'package:auto_matic/app/domain/models/realtime_template.dart';
import 'package:auto_matic/app/domain/repositories/sign_up_repository.dart';
import 'package:auto_matic/app/domain/responses/create_realtime_response.dart';
import 'package:auto_matic/app/domain/responses/register_car_response.dart';
import 'package:auto_matic/app/domain/responses/sign_in_response.dart';

import 'package:auto_matic/app/domain/responses/sign_up_response.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpRepositoryImpl implements SignUpRepository {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  SignUpRepositoryImpl(this._auth, this._firestore);

  @override
  Future<SignUpResponse> registerUser(SignUpData data) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: data.email,
        password: data.password,
      );
      userCredential.user!.updateDisplayName("${data.name} ${data.lastname}");
      return SignUpResponse(null, userCredential.user);
    } on FirebaseAuthException catch (e) {
      return SignUpResponse(
        parseStringToSignUpError(e.code),
        null,
      );
    }
  }

  @override
  Future<RegisterCarResponse> registerCar(CarData data) async {
    String? error;
    _firestore
        .collection('vehiculeStatic')
        .doc(data.uniqueCode)
        .set(data.toMap())
        .then((document) => error = null)
        .onError((e, _) {
      error = e.toString();
    });
    return RegisterCarResponse(error);
  }

  @override
  Future<CreateRealtimeResponse> createRealTime(String name) async {
    String? error;
    DocumentReference? ref;
    _firestore
        .collection('vehiculeRealtime')
        .doc(name)
        .set(RealtimeTemplate(
                batteryVoltage: 0,
                rpm: 0,
                speed: 0,
                temp: 0,
                speedUnit: "kilometer_per_hour",
                tempUnit: "degree_Celsius",
                failureCodes: [],
                lastServiceDate: DateTime.now())
            .toMap())
        .onError((e, _) {
      error = e.toString();
    });
    if (error == null) {
      ref = _firestore.collection('vehiculeRealtime').doc(name);
    }
    return CreateRealtimeResponse(error: error, ref: ref);
  }
}

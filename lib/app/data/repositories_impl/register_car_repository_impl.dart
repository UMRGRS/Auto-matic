import 'package:auto_matic/app/domain/models/car_data.dart';
import 'package:auto_matic/app/domain/models/realtime_data.dart';
import 'package:auto_matic/app/domain/repositories/register_car_repository.dart';
import 'package:auto_matic/app/domain/responses/create_realtime_response.dart';
import 'package:auto_matic/app/domain/responses/register_car_response.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterCarRepositoryImpl implements RegisterCarRepository {
  final FirebaseFirestore _firestore;

  RegisterCarRepositoryImpl(this._firestore);

  @override
  Future<RegisterCarResponse> registerCar(CarData data) async {
    String? error;
    _firestore
        .collection('vehicleStatic')
        .doc(data.uniqueCode)
        .set(data.toFirestore())
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
        .collection('vehicleRealtime')
        .doc(name)
        .set(RealtimeTemplate(
          batteryVoltage: 0,
          rpm: 0,
          speed: 0,
          temp: 0,
          speedUnit: "kilometer_per_hour",
          tempUnit: "degree_Celsius",
          failureCodes: [],
          lastServiceDate: DateTime.now(),
        ).toMap())
        .onError((e, _) {
      error = e.toString();
    });
    if (error == null) {
      ref = _firestore.collection('vehicleRealtime').doc(name);
    }
    return CreateRealtimeResponse(error: error, ref: ref);
  }
}

import 'package:auto_matic/app/domain/models/realtime_data.dart';
import 'package:auto_matic/app/domain/repositories/car_data_repository.dart';
import 'package:auto_matic/app/domain/responses/update_car_response.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_meedu/meedu.dart';

class ResetServiceController {
  static Future<UpdateCarResponse> resetService(DocumentReference reference) async {
    final carDataRepository = Get.i.find<CarDataRepository>();
    return await carDataRepository.updateDocument(reference, RealtimeData(lastServiceDate: DateTime.now()));
  }
}

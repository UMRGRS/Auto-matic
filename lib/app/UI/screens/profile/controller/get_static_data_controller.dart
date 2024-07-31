import 'package:auto_matic/app/domain/repositories/car_data_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

class GetStaticDataController{
  static Stream<QuerySnapshot> getUserCars(){
    final carDataRepository = Get.i.find<CarDataRepository>();
    return carDataRepository.getStaticSnapshots();
  }
}
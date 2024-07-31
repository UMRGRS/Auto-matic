import 'package:auto_matic/app/UI/screens/profile/utils/vehicle_states.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CarData {
  final String? carVIN, carModel, carMake, carYear, userUID, alias;
  final String? uniqueCode;
  final DocumentReference? reference;
  final VehicleState? state;
  CarData({
    required this.alias,
    required this.reference,
    required this.userUID,
    required this.uniqueCode,
    required this.carVIN,
    required this.carModel,
    required this.carMake,
    required this.carYear,
    required this.state,
  });

  factory CarData.fromMap(Map<String, dynamic> data) {
    return CarData(
      alias: data['alias'],
      reference: data['realtime'],
      userUID: data['userUID'],
      uniqueCode: null,
      carVIN: data['VIN'],
      carModel: data['model'],
      carMake: data['make'],
      carYear: data['year'],
      state: stringToState(data['state']),
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if(alias != null) "alias": alias,
      if(carVIN != null) "VIN": carVIN,
      if(carModel != null) "model": carModel,
      if(carMake != null) "make": carMake,
      if(carYear != null) "year": carYear,
      if(reference != null) "realtime": reference,
      if(userUID != null) "userUID": userUID,
      if(state != null) "state": stateToString(state!)
    };
  }

  static String stateToString(VehicleState state) {
    switch (state) {
      case VehicleState.OK:
        return 'state-ok';
      case VehicleState.Danger:
        return 'state-danger';
      case VehicleState.Urgent:
        return 'state-urgent';
    }
  }
  
  static VehicleState stringToState(String state) {
    switch (state) {
      case 'state-ok':
        return VehicleState.OK;
      case 'state-danger':
        return VehicleState.Danger;
      case 'state-urgent':
        return VehicleState.Urgent;
      default:
        return VehicleState.OK;
    }
  }
}

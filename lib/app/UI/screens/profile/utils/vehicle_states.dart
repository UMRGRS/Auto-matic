import 'package:auto_matic/app/config/config.dart';

enum VehicleState { OK, Danger, Urgent }

class VehicleStates{
  static Map<VehicleState, Map<String, dynamic>> vehicleStates = {
    VehicleState.OK: {
      "text": "OK",
      "iconPath": "assets/pages/profile/icons/check.svg",
      "color": const Color.fromRGBO(79, 240, 141, 1)
    },
    VehicleState.Danger: {
      "text": "¡Atencion!",
      "iconPath": "assets/pages/profile/icons/danger.svg",
      "color": const Color.fromRGBO(240, 220, 91, 1),
    },
    VehicleState.Urgent: {
      "text": "¡Peligro!",
      "iconPath": "assets/pages/profile/icons/cross.svg",
      "color": const Color.fromRGBO(237, 102, 92, 1),
    },
  };
}
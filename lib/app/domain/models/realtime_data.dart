import 'package:auto_matic/app/UI/screens/profile/utils/vehicle_states.dart';

class RealtimeTemplate {
  final double batteryVoltage, rpm, speed, temp;
  final String speedUnit, tempUnit;
  final List<String> failureCodes;
  final DateTime lastServiceDate;

  RealtimeTemplate({
    required this.batteryVoltage,
    required this.rpm,
    required this.speed,
    required this.temp,
    required this.speedUnit,
    required this.tempUnit,
    required this.failureCodes,
    required this.lastServiceDate,
  });

  factory RealtimeTemplate.fromMap(Map<String, dynamic> data) {
    return RealtimeTemplate(
      batteryVoltage: data['batteryVoltage'],
      rpm: data['rpm'],
      speed: data['speed'],
      temp: data['temp'],
      speedUnit: data['speedUnit'],
      tempUnit: data['tempUnit'],
      failureCodes: data['failureCodes'],
      lastServiceDate: data['lastServiceDate'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "batteryVoltage": batteryVoltage,
      "rpm": rpm,
      "speed": speed,
      "temp": temp,
      "speedUnit": speedUnit,
      "tempUnit": tempUnit,
      "failureCodes": failureCodes,
      "lastServiceDate": lastServiceDate,
    };
  }
}

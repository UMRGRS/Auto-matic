class RealtimeTemplate {
  double batteryVoltage, rpm, speed, temp;
  String speedUnit, tempUnit;
  List<String> failureCodes;
  DateTime lastServiceDate;

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
        lastServiceDate: data['lastServiceDate']);
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

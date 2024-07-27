class RealtimeData {
  final double? batteryVoltage, rpm, speed, temp;
  final String? speedUnit, tempUnit;
  final List<String>? failureCodes;
  final DateTime? lastServiceDate;

  RealtimeData({
    this.batteryVoltage,
    this.rpm,
    this.speed,
    this.temp,
    this.speedUnit,
    this.tempUnit,
    this.failureCodes,
    this.lastServiceDate,
  });

  factory RealtimeData.fromMap(Map<String, dynamic> data) {
    return RealtimeData(
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

  Map<String, dynamic> toFirestore() {
    return {
      if(batteryVoltage != null) "batteryVoltage": batteryVoltage,
      if(rpm != null) "rpm": rpm,
      if(speed != null) "speed": speed,
      if(temp != null) "temp": temp,
      if(speedUnit != null) "speedUnit": speedUnit,
      if(tempUnit != null) "tempUnit": tempUnit,
      if(failureCodes != null) "failureCodes": failureCodes,
      if(lastServiceDate != null) "lastServiceDate": lastServiceDate,
    };
  }
}

import 'package:auto_matic/app/domain/models/car_data.dart';
import 'package:auto_matic/app/domain/responses/create_realtime_response.dart';
import 'package:auto_matic/app/domain/responses/register_car_response.dart';

abstract class RegisterCarRepository {
  Future<RegisterCarResponse> registerCar(CarData data);
  Future<CreateRealtimeResponse> createRealTime(String name);
}

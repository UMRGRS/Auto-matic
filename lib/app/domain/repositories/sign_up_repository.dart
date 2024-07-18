import 'package:auto_matic/app/domain/inputs/car_data.dart';
import 'package:auto_matic/app/domain/responses/create_realtime_response.dart';

import '../inputs/sign_up_data.dart';
import '../responses/register_car_response.dart';
import '../responses/sign_up_response.dart';

abstract class SignUpRepository {
  Future<SignUpResponse> registerUser(SignUpData data);
  Future<RegisterCarResponse> registerCar(CarData data);
  Future<CreateRealtimeResponse> createRealTime(String name);
}





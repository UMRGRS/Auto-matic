import 'package:auto_matic/app/UI/screens/register_car/controller/register_car_state.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:auto_matic/app/domain/inputs/car_data.dart';
import 'package:auto_matic/app/domain/repositories/authentication_repository.dart';
import 'package:auto_matic/app/domain/repositories/sign_up_repository.dart';
import 'package:auto_matic/app/domain/responses/register_car_response.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

class RegisterCarController extends StateNotifier<RegisterCarState>{
  RegisterCarController() : super(RegisterCarState.initialState);

  final GlobalKey<FormState> uniqueCodeKey = GlobalKey();
  final GlobalKey<FormState> keyVIN = GlobalKey();

  Future<RegisterCarResponse> submitCar() async {
    final signUpRepository = Get.i.find<SignUpRepository>();
    final authRepository = Get.i.find<AuthenticationRepository>();

    final user = await authRepository.user;
    final response = await signUpRepository.createRealTime(state.uniqueCode);

    if (response.error != null) {
      return RegisterCarResponse(response.error);
    }
    return signUpRepository.registerCar(CarData(
        alias: "Tu carrito",
        reference: response.ref!,
        userUID: user!.uid,
        uniqueCode: state.uniqueCode,
        carVIN: state.carVIN,
        carModel: state.carModel,
        carMake: state.carMade,
        carYear: state.carYear));
  }

  void onUniqueCodeChanged(String text) {
    state = state.copyWith(uniqueCode: text);
  }

  void onCarVINChanged(String text) {
    state = state.copyWith(carVIN: text);
  }

  void onCarModelChanged(String text) {
    state = state.copyWith(carModel: text);
  }

  void onCarMadeChanged(String text) {
    state = state.copyWith(carMade: text);
  }

  void onYearChanged(String text) {
    state = state.copyWith(carYear: text);
  }

}
import 'package:auto_matic/app/UI/screens/register/controller/register_state.dart';
import 'package:auto_matic/app/domain/inputs/car_data.dart';
import 'package:auto_matic/app/domain/inputs/sign_up_data.dart';
import 'package:auto_matic/app/domain/repositories/authentication_repository.dart';
import 'package:auto_matic/app/domain/repositories/sign_up_repository.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

import 'package:auto_matic/app/config/config.dart';

import 'package:auto_matic/app/domain/responses/sign_up_response.dart';

import 'package:auto_matic/app/domain/responses/register_car_response.dart';

class RegisterController extends StateNotifier<RegisterState> {
  RegisterController() : super(RegisterState.initialState);

  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<FormState> uniqueCodeKey = GlobalKey();
  final GlobalKey<FormState> keyVIN = GlobalKey();

  final _signUpRepository = Get.i.find<SignUpRepository>();
  final _authRepository = Get.i.find<AuthenticationRepository>();

  Future<SignUpResponse> submit() {
    return _signUpRepository.registerUser(SignUpData(
        name: state.name,
        lastname: state.lastName,
        email: state.email,
        password: state.password));
  }

  Future<RegisterCarResponse> submitCar() async {
    final user = await _authRepository.user;
    final response = await _signUpRepository.createRealTime(state.uniqueCode);
    if (response.error != null) {
      return RegisterCarResponse(response.error);
    }
    return _signUpRepository.registerCar(CarData(
        alias: "Tu carrito",
        reference: response.ref!,
        userUID: user!.uid,
        uniqueCode: state.uniqueCode,
        carVIN: state.carVIN,
        carModel: state.carModel,
        carMake: state.carMade,
        carYear: state.carYear));
  }

  void onNameChanged(String text) {
    state = state.copyWith(name: text);
  }

  void onLastNameChanged(String text) {
    state = state.copyWith(lastName: text);
  }

  void onEmailChanged(String text) {
    state = state.copyWith(email: text);
  }

  void onPasswordChanged(String text) {
    state = state.copyWith(password: text);
  }

  void onVPasswordChanged(String text) {
    state = state.copyWith(vPassword: text);
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

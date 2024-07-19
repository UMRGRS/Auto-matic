import 'package:auto_matic/app/UI/screens/register/controller/register_state.dart';
import 'package:auto_matic/app/domain/inputs/sign_up_data.dart';
import 'package:auto_matic/app/domain/repositories/sign_up_repository.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

import 'package:auto_matic/app/config/config.dart';

import 'package:auto_matic/app/domain/responses/sign_up_response.dart';

class RegisterController extends StateNotifier<RegisterState> {
  RegisterController() : super(RegisterState.initialState);

  final GlobalKey<FormState> formKey = GlobalKey();

  Future<SignUpResponse> submit() {
    final signUpRepository = Get.i.find<SignUpRepository>();

    return signUpRepository.registerUser(SignUpData(
        name: state.name,
        lastname: state.lastName,
        email: state.email,
        password: state.password));
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
}

import 'package:auto_matic/app/UI/global_controllers/session_controller.dart';
import 'package:auto_matic/app/UI/screens/profile/utils/vehicle_states.dart';
import 'package:auto_matic/app/UI/screens/register_car/controller/register_car_state.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:auto_matic/app/domain/models/car_data.dart';
import 'package:auto_matic/app/domain/repositories/register_car_repository.dart';
import 'package:auto_matic/app/domain/responses/register_car_response.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

class RegisterCarController extends StateNotifier<RegisterCarState> {
  RegisterCarController() : super(RegisterCarState.initialState);

  final GlobalKey<FormState> formKey = GlobalKey();

  Future<RegisterCarResponse> submitCar() async {
    final registerCarRepository = Get.i.find<RegisterCarRepository>();
    final SessionController sessionController = sessionProvider.read;
    final user = sessionController.user;
    final response =
        await registerCarRepository.createRealTime(state.uniqueCode);
    if (response.error != null) {
      return RegisterCarResponse(response.error);
    }
    final responseRegisterStatic = await registerCarRepository.registerCar(
      CarData(
        alias: "Tu carrito",
        reference: response.ref!,
        userUID: user!.uid,
        uniqueCode: state.uniqueCode,
        carVIN: state.carVIN,
        carModel: state.carModel,
        carMake: state.carMade,
        carYear: state.carYear,
        state: VehicleState.OK,
      ),
    );
    return responseRegisterStatic;
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

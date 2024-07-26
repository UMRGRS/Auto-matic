import 'package:auto_matic/app/UI/screens/vehicle_RD/controller/update_static_state.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:auto_matic/app/domain/models/car_data.dart';
import 'package:auto_matic/app/domain/repositories/car_data_repository.dart';
import 'package:auto_matic/app/domain/responses/update_car_response.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_meedu/meedu.dart';

class UpdateStaticController extends StateNotifier<UpdateStaticState> {
  UpdateStaticController() : super(UpdateStaticState.initialState);

  final GlobalKey<FormState> formKey = GlobalKey();

  Future<UpdateCarResponse> updateDocument(DocumentReference reference) async {
    final carDataRepository = Get.i.find<CarDataRepository>();
    return await carDataRepository.updateDocument(
      reference,
      CarData(
          alias: state.alias,
          reference: null,
          userUID: null,
          uniqueCode: null,
          carVIN: null,
          carModel: null,
          carMake: null,
          carYear: null,
          state: null),
    );
  }

  void onAliasChanged(String text) {
    state = state.copyWith(alias: text);
  }
}

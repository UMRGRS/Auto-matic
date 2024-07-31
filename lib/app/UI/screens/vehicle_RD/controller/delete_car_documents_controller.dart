import 'package:auto_matic/app/domain/repositories/car_data_repository.dart';
import 'package:auto_matic/app/domain/responses/delete_car_response.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

class DeleteCarDocumentsController {
  static Future<DeleteCarResponse> deleteCarDocuments(
      Map<String, dynamic> references) async {
    final carDataRepository = Get.i.find<CarDataRepository>();
    return await carDataRepository.deleteDocument(references);
  }
}

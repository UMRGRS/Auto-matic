import 'package:auto_matic/app/UI/global_widgets/dialogs/progress_dialog.dart';
import 'package:auto_matic/app/UI/screens/vehicle_RD/controller/delete_car_documents_controller.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> deleteCarDocuments(
    BuildContext context, Map<String, dynamic> references) async {
  ProgressDialog.show(context);
  await DeleteCarDocumentsController.deleteCarDocuments(references);
  context.pop();
  context.pop();
  context.pushReplacementNamed('profile');
}

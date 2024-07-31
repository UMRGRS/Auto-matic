import 'package:auto_matic/app/UI/global_widgets/dialogs/dialogs.dart';
import 'package:auto_matic/app/UI/global_widgets/dialogs/progress_dialog.dart';
import 'package:auto_matic/app/UI/screens/vehicle_RD/controller/reset_service_controller.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> resetService(
    BuildContext context, DocumentReference reference) async {
  ProgressDialog.show(context);
  await ResetServiceController.resetService(reference);
  context.pop();
  context.pop();
  Dialogs.showAlert(
    title: "Éxito",
    content: "Servicio restablecido con éxito",
    context: context,
  );
}

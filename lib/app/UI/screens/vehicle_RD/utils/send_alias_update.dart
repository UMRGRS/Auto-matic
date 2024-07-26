import 'package:auto_matic/app/UI/global_widgets/dialogs/dialogs.dart';
import 'package:auto_matic/app/UI/global_widgets/dialogs/progress_dialog.dart';
import 'package:auto_matic/app/UI/screens/vehicle_RD/widgets/update_alias_pop_up.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> sendAliasUpdate(
    BuildContext context, DocumentReference reference) async {
  final controller = updateDeleteCarProvider.read;
  final isValidForm = controller.formKey.currentState!.validate();
  if (isValidForm) {
    ProgressDialog.show(context);
    await controller.updateDocument(reference);
    context.pop();
    context.pop();
    Dialogs.showAlert(
      title: "Éxito",
      content: "Alias actualizado con éxito",
      context: context,
    );
  }
}

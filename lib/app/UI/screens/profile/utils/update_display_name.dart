import 'package:auto_matic/app/UI/global_widgets/dialogs/dialogs.dart';
import 'package:auto_matic/app/UI/global_widgets/dialogs/progress_dialog.dart';
import 'package:auto_matic/app/UI/screens/profile/widgets/update_name_pop_up.dart';
import 'package:auto_matic/app/config/config.dart';

Future<void> updateDisplayName(BuildContext context) async {
  final controller = updateDisplayNameProvider.read;
  final isValidForm = controller.displayNameFormKey.currentState!.validate();
  if (isValidForm) {
    ProgressDialog.show(context);
    await controller.updateDisplayName();
    context.pop();
    context.pop();
    Dialogs.showAlert(
        title: "Éxito",
        content: "Nombre actualizado con éxito",
        context: context);
  }
}

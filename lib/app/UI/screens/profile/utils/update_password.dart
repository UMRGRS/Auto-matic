import 'package:auto_matic/app/UI/global_widgets/dialogs/dialogs.dart';
import 'package:auto_matic/app/UI/global_widgets/dialogs/progress_dialog.dart';
import 'package:auto_matic/app/UI/screens/profile/widgets/update_password_pop_up.dart';
import 'package:auto_matic/app/config/config.dart';

Future<void> updatePassword(BuildContext context) async {
  final controller = updatePasswordProvider.read;
  final isValidForm = controller.passwordFormKey.currentState!.validate();
  if (isValidForm) {
    ProgressDialog.show(context);
    await controller.updatePassword();
    context.pop();
    context.pop();
    Dialogs.showAlert(
        title: "Éxito",
        content: "Contraseña actualizada con éxito",
        context: context);
  }
}

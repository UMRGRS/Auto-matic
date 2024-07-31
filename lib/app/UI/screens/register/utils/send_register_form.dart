import 'package:auto_matic/app/UI/global_widgets/dialogs/dialogs.dart';
import 'package:auto_matic/app/UI/global_widgets/dialogs/progress_dialog.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:auto_matic/app/domain/responses/sign_up_response.dart';

Future<void> sendRegisterForm(BuildContext context) async {
  final controller = registerProvider.read;
  final isValidForm = controller.formKey.currentState!.validate();
  if (isValidForm) {
    ProgressDialog.show(context);
    final response = await controller.submit();
    context.pop();
    if (response.error != null) {
      String content = "";
      switch (response.error!) {
        case SignUpError.emailAlreadyInUse:
          content = "Ya existe una cuenta con ese correo";
        case SignUpError.weakPassword:
          content = "Tu contraseña es muy débil";
        case SignUpError.networkRequestFailed:
          content = "Sin conexión a internet";
        case SignUpError.unknown:
          content = "Error desconocido";
      }
      Dialogs.showAlert(title: "Error", content: content, context: context);
    } else {
      context.pushReplacementNamed("profile");
    }
  } else {
    Dialogs.showAlert(title: "Error", content: "Campos inválidos", context: context);
  }
}

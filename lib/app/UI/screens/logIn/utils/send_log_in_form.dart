import 'package:auto_matic/app/UI/global_widgets/dialogs/dialogs.dart';
import 'package:auto_matic/app/UI/global_widgets/dialogs/progress_dialog.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:auto_matic/app/domain/responses/sign_in_response.dart';

Future<void> sendLogInForm(BuildContext context) async {
  final controller = loginProvider.read;
  final isValidForm = controller.logInKey.currentState!.validate();
  if (isValidForm) {
    ProgressDialog.show(context);
    final response = await controller.submit();
    context.pop();
    if (response.error != null) {
      String content = "";
      switch (response.error) {
        case SignInError.invalidEmail:
          content = "Dirección de correo invalida";
        case SignInError.userDisabled:
          content = "Usuario deshabilitado";
        case SignInError.userNotFound:
          content = "No existe una cuenta con ese correo";
        case SignInError.wrongPassword:
          content = "Contraseña incorrecta";
        case SignInError.networkRequestFailed:
          content = "Sin conexión a internet";
        case SignInError.tooManyRequests:
          content = "Demasiados intentos, regresa más tarde";
        case SignInError.unknown:
          content = "Error desconocido";
        default:
          content = "Error desconocido";
      }
      Dialogs.showAlert(context, title: "Error", content: content);
    } else {
      context.pushReplacementNamed("profile");
    }
  }
}

import 'package:auto_matic/app/UI/global_widgets/dialogs/dialogs.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:auto_matic/app/domain/responses/sign_in_response.dart';

void handleLogInResponse(BuildContext context, SignInResponse response) {
  if (response.error != null) {
    String content = "";
    if (response.error != SignInError.cancelled) {
      switch (response.error) {
        case SignInError.invalidEmail:
          content = "Dirección de correo inválida";
        case SignInError.userDisabled:
          content = "Usuario deshabilitado";
        case SignInError.userNotFound:
          content = "No existe una cuenta con ese correo";
        case SignInError.wrongPassword:
          content = "Contraseña incorrecta";
        case SignInError.networkRequestFailed:
          content = "Sin conexión a internet";
        case SignInError.tooManyRequests:
          content = "Demasiados intentos. Regresa más tarde";
        case SignInError.accountExistsWithDifferentCredential:
          content = response.providerId ?? "Método de autenticación inválido";
        case SignInError.invalidCredential:
          content = "Credenciales inválidas";
        case SignInError.operationNotAllowed:
          content = "Operación no permitida";
        case SignInError.unknown:
          content = "Error desconocido";
        default:
          content = "Error desconocido";
      }
      Dialogs.showAlert(title: "Error", content: content, context: context);
    }
  } else {
    context.pushReplacementNamed("profile");
  }
}

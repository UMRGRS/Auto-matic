import 'package:auto_matic/app/UI/global_widgets/dialogs/progress_dialog.dart';
import 'package:auto_matic/app/UI/screens/logIn/utils/handle_log_in_response.dart';
import 'package:auto_matic/app/config/config.dart';

Future<void> sendLogInForm(BuildContext context) async {
  final controller = loginProvider.read;
  final isValidForm = controller.logInKey.currentState!.validate();
  if (isValidForm) {
    ProgressDialog.show(context);
    final response = await controller.signInWithEmailAndPassword();
    context.pop();
    handleLogInResponse(context, response);
  }
}

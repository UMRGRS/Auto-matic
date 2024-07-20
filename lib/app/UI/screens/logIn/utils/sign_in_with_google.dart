import 'package:auto_matic/app/UI/global_widgets/dialogs/progress_dialog.dart';
import 'package:auto_matic/app/UI/screens/logIn/utils/handle_log_in_response.dart';
import 'package:auto_matic/app/config/config.dart';

void signInWithGoogle(BuildContext context) async {
  ProgressDialog.show(context);
  final controller = loginProvider.read;
  final response = await controller.signInWithGoogle();
  Navigator.pop(context);
  handleLogInResponse(context, response);
}

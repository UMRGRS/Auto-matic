import 'package:auto_matic/app/UI/global_controllers/session_controller.dart';

Future<bool> isAuth() async {
  final sessionController = sessionProvider.read;
  if (sessionController.user != null) {
    return true;
  }
  return false;
}

import 'package:auto_matic/app/config/config.dart';
import 'package:auto_matic/app/domain/repositories/authentication_repository.dart';
import 'package:auto_matic/app/domain/responses/sign_in_response.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

class LogInController extends SimpleNotifier {
  String _email = "", _password = "";
  final GlobalKey<FormState> logInKey = GlobalKey();
  final _auth = Get.i.find<AuthenticationRepository>();

  void onEmailChange(String text) {
    _email = text;
  }

  void onPasswordChange(String text) {
    _password = text;
  }

  Future<SignInResponse> submit() {
    return _auth.signInWithEmailAndPassword(_email, _password);
  }
}

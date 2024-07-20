import 'package:auto_matic/app/UI/global_controllers/session_controller.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:auto_matic/app/domain/repositories/authentication_repository.dart';
import 'package:auto_matic/app/domain/responses/sign_in_response.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

class LogInController extends SimpleNotifier {
  final SessionController _sessionController;

  String _email = "", _password = "";

  final _auth = Get.i.find<AuthenticationRepository>();
  final GlobalKey<FormState> logInKey = GlobalKey();

  LogInController(this._sessionController);

  void onEmailChange(String text) {
    _email = text;
  }

  void onPasswordChange(String text) {
    _password = text;
  }

  Future<SignInResponse> signInWithEmailAndPassword() async {
    final response = await _auth.signInWithEmailAndPassword(_email, _password);
    if (response.user != null) {
      _sessionController.setUser(response.user!);
    }
    return response;
  }

  Future<SignInResponse> signInWithGoogle() {
    return kIsWeb
        ? _auth.signInWithGoogleWeb()
        : _auth.signInWithGoogleMobile();
  }
}

import 'package:auto_matic/app/domain/repositories/authentication_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

class SessionController extends SimpleNotifier {
  User? _user;
  final _auth = Get.i.find<AuthenticationRepository>();

  User? get user => _user;

  void setUser(User user) {
    _user = user;
    notify();
  }

  Future<void> signOut() async {
    await _auth.signOut();
    _user = null;
  }
}

final sessionProvider = SimpleProvider(
      (_) => SessionController(),
);

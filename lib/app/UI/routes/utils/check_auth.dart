import 'package:auto_matic/app/domain/repositories/authentication_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

Future<bool> isAuth() async {
  final authRepository = Get.i.find<AuthenticationRepository>();
  User? user = await authRepository.user;
  if (user != null) {
    return true;
  }
  return false;
}

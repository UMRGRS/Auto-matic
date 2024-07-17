import 'package:auto_matic/app/config/config.dart';
import 'package:auto_matic/app/domain/repositories/authentication_repository.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

class SplashController extends SimpleNotifier{
  final _authRepository = Get.i.find<AuthenticationRepository>();

  String? _routeName;
  String? get routeName => _routeName;

  SplashController() {
    _init();
  }

  void _init() async {
    final user = await _authRepository.user;
    _routeName = user != null ? Routes.profile : Routes.signup4;
    notify();
  }
}

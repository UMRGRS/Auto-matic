import 'package:auto_matic/app/UI/global_controllers/session_controller.dart';
import 'package:auto_matic/app/UI/screens/profile/controller/update_profile_state.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:auto_matic/app/domain/repositories/account_repository.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

class UpdateProfileController extends StateNotifier<UpdateProfileState> {
  UpdateProfileController() : super(UpdateProfileState.initialState);

  final accountRepository = Get.i.find<AccountRepository>();

  final SessionController _sessionController = sessionProvider.read;
  final GlobalKey<FormState> displayNameFormKey = GlobalKey();
  final GlobalKey<FormState> passwordFormKey = GlobalKey();

  Future<void> updateDisplayName() async {
    final user = await accountRepository
        .updateDisplayName("${state.name} ${state.lastname}");
    if (user != null) {
      _sessionController.setUser(user);
    }
  }

  Future<void> updatePassword() async {
    final user = await accountRepository.updateUserPassword(state.password);
    if (user != null) {
      _sessionController.setUser(user);
    }
  }

  void onPasswordChange(String text) {
    state = state.copyWith(password: text);
  }

  void onVPasswordChange(String text) {
    state = state.copyWith(vPassword: text);
  }

  void onNameChange(String text) {
    state = state.copyWith(name: text);
  }

  void onLastnameChange(String text) {
    state = state.copyWith(lastname: text);
  }
}

import 'package:auto_matic/app/UI/screens/profile/controller/update_profile_controller.dart';
import 'package:auto_matic/app/UI/screens/profile/controller/update_profile_state.dart';
import 'package:auto_matic/app/UI/screens/profile/utils/update_password.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:auto_matic/app/global_utils/password_validator.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

final updatePasswordProvider =
    StateProvider<UpdateProfileController, UpdateProfileState>(
        (_) => UpdateProfileController());

class UpdatePasswordPopUp {
  static Future<void> showUpdatePasswordPopUp(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Introduce la nueva contraseña"),
        content: ProviderListener<UpdateProfileController>(
          provider: updatePasswordProvider,
          builder: (_, controller) {
            return Form(
              key: controller.passwordFormKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomInputField(
                    label: 'Contraseña',
                    onChanged: controller.onPasswordChange,
                    isPassword: true,
                    validator: (text) {
                      if (text == null) return "Contraseña inválida";
                      return isValidPassword(text);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Consumer(
                    builder: (_, watch, __) {
                      watch(registerProvider.select((state) => state.password));
                      return CustomInputField(
                        label: 'Verifica tu contraseña',
                        onChanged: controller.onVPasswordChange,
                        isPassword: true,
                        mode: AutovalidateMode.always,
                        validator: (text) {
                          if (text == null) return "Contraseña inválida";
                          if (controller.state.password != text) {
                            return "Las contraseñas no coinciden";
                          }
                          return null;
                        },
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
        actions: [
          AppBarButton(
            text: "Confirmar",
            onPressed: () => updatePassword(context),
            color: Config.confirmGreen,
          ),
          AppBarButton(
            text: "Cancelar",
            onPressed: () => context.pop(),
            color: Config.fifthColor,
          ),
        ],
      ),
    );
  }
}

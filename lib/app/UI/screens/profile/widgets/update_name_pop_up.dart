import 'package:auto_matic/app/UI/screens/profile/controller/update_profile_controller.dart';
import 'package:auto_matic/app/UI/screens/profile/controller/update_profile_state.dart';
import 'package:auto_matic/app/UI/screens/profile/utils/update_display_name.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:auto_matic/app/global_utils/name_validator.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

final updateDisplayNameProvider =
    StateProvider<UpdateProfileController, UpdateProfileState>(
        (_) => UpdateProfileController());

class UpdateNamePopUp {
  static Future<void> showUpdateNamePopUp(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Escribe el nuevo nombre de usuario"),
        content: ProviderListener<UpdateProfileController>(
          provider: updateDisplayNameProvider,
          builder: (_, controller) {
            return Form(
              key: controller.displayNameFormKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomInputField(
                    label: 'Nombre de usuario',
                    maxLength: 30,
                    onChanged: controller.onNameChange,
                    validator: (text) {
                      if (text == null) return "Nombre invalido";
                      return isValidName(text)
                          ? null
                          : "El nombre no puede contener espacios en blanco o caracteres especiales";
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    label: 'Apellido',
                    onChanged: controller.onLastnameChange,
                    maxLength: 15,
                    validator: (text) {
                      if (text == null) return "Apellido invalido";
                      return isValidName(text)
                          ? null
                          : "El apellido no puede contener espacios en blanco o caracteres especiales";
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
            onPressed: () => updateDisplayName(context),
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

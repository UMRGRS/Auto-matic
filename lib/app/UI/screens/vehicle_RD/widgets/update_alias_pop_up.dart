import 'package:auto_matic/app/UI/screens/vehicle_RD/controller/update_static_controller.dart';
import 'package:auto_matic/app/UI/screens/vehicle_RD/controller/update_static_state.dart';
import 'package:auto_matic/app/UI/screens/vehicle_RD/utils/send_alias_update.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:auto_matic/app/global_utils/alias_validator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

//Document this
final updateDeleteCarProvider =
StateProvider<UpdateStaticController, UpdateStaticState>(
        (_) => UpdateStaticController());

class UpdateAliasPopUp {
  //Document this
  static Future<void> showUpdateAliasPopUp(BuildContext context, DocumentReference reference) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Escribe el nuevo apodo"),
        content: ProviderListener<UpdateStaticController>(
          provider: updateDeleteCarProvider,
          builder: (_, controller) {
            return Form(
              key: controller.formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomInputField(
                    label: 'Alias',
                    maxLength: 10,
                    //Document this
                    onChanged: controller.onAliasChanged,
                    //Document this
                    validator: (text) {
                      if (text == null) return "Apodo inválido";
                      return isValidAlias(text)
                          ? null
                          : "El apodo no puede contener caracteres especiales";
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
            //Document this
            onPressed: () => sendAliasUpdate(context, reference),
            color: Config.confirmGreen,
          ),
          AppBarButton(
            text: "Cancelar",
            //Document this
            onPressed: () => context.pop(),
            color: Config.fifthColor,
          ),
        ],
      ),
    );
  }
}

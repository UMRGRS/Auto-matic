import 'package:auto_matic/app/UI/screens/register/controller/register_controller.dart';
import 'package:auto_matic/app/UI/screens/register/utils/send_register_form.dart';
import 'package:auto_matic/app/config/config.dart';
import 'package:auto_matic/app/global_utils/password_validator.dart';
import 'package:flutter_meedu/flutter_meedu.dart';

import 'package:auto_matic/app/global_utils/email_validator.dart';
import 'package:auto_matic/app/global_utils/name_validator.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});
  @override
  Widget build(BuildContext context) {
    return ProviderListener<RegisterController>(
      provider: registerProvider,
      builder: (_, controller) {
        return Form(
          key: controller.formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Crear cuenta",
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 10),
                        CustomInputField(
                          label: 'Nombre',
                          //Document this
                          onChanged: controller.onNameChanged,
                          maxLength: 15,
                          //Document this
                          validator: (text) {
                            if (text == null) return "Nombre inválido";
                            return isValidName(text)
                                ? null
                                : "El nombre no puede contener espacios en blanco o caracteres especiales.";
                          },
                        ),
                        const SizedBox(height: 20),
                        CustomInputField(
                          label: 'Apellido',
                          //Document this
                          onChanged: controller.onLastNameChanged,
                          maxLength: 15,
                          //Document this
                          validator: (text) {
                            if (text == null) return "Apellido inválido";
                            return isValidName(text)
                                ? null
                                : "El apellido no puede contener espacios en blanco o caracteres especiales";
                          },
                        ),
                        const SizedBox(height: 20),
                        CustomInputField(
                          label: "Correo electrónico",
                          inputType: TextInputType.emailAddress,
                          //Document this
                          onChanged: controller.onEmailChanged,
                          //Document this
                          validator: (text) {
                            if (text == null) {
                              return "Correo electrónico inválido";
                            }
                            return isValidEmail(text)
                                ? null
                                : "Correo electrónico inválido";
                          },
                        ),
                        const SizedBox(height: 20),
                        CustomInputField(
                          label: "Contraseña",
                          //Document this
                          onChanged: controller.onPasswordChanged,
                          isPassword: true,
                          //Document this
                          validator: (text) {
                            if (text == null) return "Contraseña inválida";
                            return isValidPassword(text);
                          },
                        ),
                        const SizedBox(height: 20),
                        Consumer(
                          builder: (_, watch, __) {
                            watch(registerProvider
                                .select((state) => state.password));
                            return CustomInputField(
                              label: "Verifica tu contraseña",
                              //Document this
                              onChanged: controller.onVPasswordChanged,
                              isPassword: true,
                              mode: AutovalidateMode.always,
                              //Document this
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
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                //Document this
                                onPressed: () => sendRegisterForm(context),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Config.confirmGreen,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Text(
                                  "Continuar",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const AccessWithSM()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
